import json
import traceback
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.core.mail import send_mail, get_connection

def build_email_html(item):
    nom_employe = item.get('assignedUserName', 'Non spécifié')
    departement = item.get('department', 'Non spécifié')
    request_type = item.get('requestType', 'Non spécifié')
    document_demande = item.get('subRequestType', 'Non spécifié')
    date_demande = item.get('createdAt', 'Non spécifié')
    ticket_id = item.get('id', 'Non spécifié')

    ticket_link = f"http://pdi-management.ddns.net:41137/#CHRRequest/view/{ticket_id}"
    site_link = "http://pdi-management.ddns.net:41137/"

    return f"""
<html>
<head>
    <style>
        body {{ font-family: Arial, sans-serif; margin: 0; padding: 0; }}
        .container {{ max-width: 600px; margin: 0 auto; background-color: #fffced; }}
        .header {{ background-color: #f7dc69; color: #5b5b5c; padding: 20px; text-align: center; }}
        .content {{ padding: 20px; background-color: #fffced; }}
        .footer {{ background-color: #f7dc69; padding: 10px; text-align: center; font-size: 12px; color: #666; font-weight: bold; }}
        .logo-container {{ font-size: 13px; margin-bottom: 20px; margin-left: -55px; }}
        .logo {{ width: 205.977px; }}
        .section {{ margin: 15px 0; }}
        .section-title {{ font-weight: bold; color: #1a73e8; margin-bottom: 5px; }}
        .info {{ margin: 6px 0; }}
        .label {{ font-weight: bold; color: #333; }}
        .ticket-link {{ color: #1a73e8; text-decoration: none; font-weight: bold; }}
        .ticket-link:hover {{ text-decoration: underline; }}
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <div class="logo-container">
                <a href="{site_link}">
                    <img src="http://pdi-management.ddns.net:41137/?entryPoint=LogoImage&id=6a61f4f44561a7f80" class="logo" />
                </a>
            </div>
            <h1>📋 Nouvelle demande</h1>
        </div>

        <div class="content">
            <p>Bonjour Équipe RH,</p>

            <p>Une nouvelle demande a été soumise via PDI Management et nécessite votre traitement.</p>

            <div class="section">
                <div class="section-title">Informations du demandeur</div>
                <p class="info"><span class="label">👤 Nom complet :</span> {nom_employe}</p>
                <p class="info"><span class="label">🏢 Département :</span> {departement}</p>
            </div>

            <div class="section">
                <div class="section-title">Détails de la demande</div>
                <p class="info"><span class="label">📂 Catégorie :</span> {request_type} | {document_demande}</p>
            </div>

            <div class="section">
                <div class="section-title">Suivi</div>
                <p class="info"><span class="label">🕒 Date de soumission :</span> {date_demande}</p>
                <p class="info"><span class="label">🔖 Numéro de demande :</span> <a href="{ticket_link}" class="ticket-link">{ticket_id}</a></p>
            </div>

            <p>Cordialement,<br>PDI Management Software.</p>
        </div>

        <div class="footer">
            Cet e-mail est généré automatiquement. Merci de ne pas y répondre.
        </div>
    </div>
</body>
</html>
"""


@csrf_exempt
def espocrm_webhook(request):
    print("Hello ! La requête a été reçue")

    if request.method == 'POST':
        try:
            data = json.loads(request.body)
            print(f"Données reçues : {data}")

            # Tester la connexion SMTP avant l'envoi
            try:
                connection = get_connection()
                connection.open()
                print("✅ Connexion SMTP établie")
                connection.close()
            except Exception as e:
                print(f"❌ Erreur de connexion SMTP : {e}")
                raise e

            items = data if isinstance(data, list) else [data]

            for item in items:
                nom_employe = item.get('assignedUserName', 'Non spécifié')
                sujet = f"Nouvelle demande de {nom_employe}"
                message = build_email_html(item)

                send_mail(
                    sujet,
                    '',
                    'hr.playdesign@gmail.com',
                    ['hr.playdesign@gmail.com'],
                    fail_silently=False,
                    html_message=message,
                )
                print(f"✅ Email envoyé pour la demande de {nom_employe}")

            return JsonResponse({
                'status': 'success',
                'message': f'Hello ! {len(items)} email(s) envoyé(s) avec succès'
            }, status=200)

        except Exception as e:
            print(f"❌ Erreur complète : {e}")
            print(f"❌ Traceback : {traceback.format_exc()}")
            return JsonResponse({
                'status': 'error',
                'message': str(e)
            }, status=500)

    return JsonResponse({
        'status': 'error',
        'message': 'Méthode non autorisée'
    }, status=405)