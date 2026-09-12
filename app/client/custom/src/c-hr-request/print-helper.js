define('custom:c-hr-request/print-helper', [], function () {

    var hrTeamId = '6a5a32b052a49aa66';

    // Teams autorisées pour le print auto simplifié
    var autoPrintTeamIds = [
        '6a5a3ea06c80fa0bc', // employee
        '6a5a32a4cced1f99f', // IT
    ];

    // Templates pour autoPrintTeamIds
    var demandeDocumentTemplateId = '6a5f851bbabd9763f'; // DEMANDE DE DOCUMENT
    var congesTemplateId = '6a60cb7a0dd4aee72'; // Gestion des congés et absences

    // Mapping par sous-type, comme la RH, mais vers seulement 2 templates
    var autoPrintTemplateMap = {
        // gCA -> congés
        'Demande de congé annuel': congesTemplateId,
        'Congé maladie': congesTemplateId,
        'Congé maternité / paternité': congesTemplateId,
        'Congé sans solde': congesTemplateId,
        'Absence exceptionnelle': congesTemplateId,
        'Télétravail': congesTemplateId,
        "Déclaration d'heures supplémentaire": congesTemplateId,

        // gA -> demande de document
        'Attestation de travail': demandeDocumentTemplateId,
        'Attestation de salaire': demandeDocumentTemplateId,
        "Certificat d'emploi": demandeDocumentTemplateId,
        'Mise à jour des informations personnelles': demandeDocumentTemplateId,
        "Changement d'adresse": demandeDocumentTemplateId,
        'Modification des coordonnées bancaires': demandeDocumentTemplateId,
        'Demande de copie de contrat': demandeDocumentTemplateId,

        // rM -> demande de document
        'Demande de recrutement': demandeDocumentTemplateId,
        'Recommandation de candidat': demandeDocumentTemplateId,

        // seE -> demande de document
        "Déclaration d'accident de travail": demandeDocumentTemplateId,
        'Demande de visite médicale': demandeDocumentTemplateId,
    };

    var pdfTemplateMap = {
        // Gestion des congés et absences
        'Demande de congé annuel': '6a60cb7a0dd4aee72',
        'Congé maladie': '6a60cb7a0dd4aee72',
        'Congé maternité / paternité': '6a60cb7a0dd4aee72',
        'Congé sans solde': '6a60cb7a0dd4aee72',
        'Absence exceptionnelle': '6a60cb7a0dd4aee72',
        'Télétravail': '6a60cb7a0dd4aee72',
        "Déclaration d'heures supplémentaire": '6a60cb7a0dd4aee72',

        // Gestion administrative
        'Attestation de travail': '6a609ed21a40875fc',
        'Attestation de salaire': '6a60addda4fc94ad4',
        "Certificat de travail": '6a60d0b8896102a5d',
        'Mise à jour des informations personnelles': '6a5f851bbabd9763f',
        "Changement d'adresse": '6a5f851bbabd9763f',
        'Modification des coordonnées bancaires': '6a5f851bbabd9763f',
        'Demande de copie de contrat': '6a5f851bbabd9763f',

        // Recrutement et mobilité
        'Demande de recrutement': '6a5f851bbabd9763f',
        'Recommandation de candidat': '6a5f851bbabd9763f',

        // Santé et bien-être
        "Déclaration d'accident de travail": '6a5f851bbabd9763f',
        'Demande de visite médicale': '6a5f851bbabd9763f',
    };

    var defaultTemplateId = '6a62090347bd327c1';

    var requestTypeFieldMap = {
        'Gestion des congés et absences': 'gCA',
        'Gestion administrative': 'gA',
        'Recrutement et mobilité': 'rM',
        'Santé et bien-être': 'seE',
    };

    function getSubTypeFieldName(model) {
        var requestType = model.get('requestType');

        return requestTypeFieldMap[requestType] || null;
    }

    // True for users who get an auto-selected template (HR, or the simplified employee/IT teams).
    function usesAutoTemplate(user) {
        // Admins always get the manual template picker, regardless of team membership.
        if (user.isAdmin && user.isAdmin()) {
            return false;
        }

        var teamsIds = user.get('teamsIds') || [];

        if (teamsIds.indexOf(hrTeamId) !== -1) {
            return true;
        }

        return teamsIds.some(function (id) {
            return autoPrintTeamIds.indexOf(id) !== -1;
        });
    }

    // True if the model is missing the sub-type field needed to pick a template
    // (list-row models only carry the fields shown in the list layout).
    function needsFullModel(model, user) {
        if (!usesAutoTemplate(user)) {
            return false;
        }

        var subFieldName = getSubTypeFieldName(model);

        return !!subFieldName && !model.has(subFieldName);
    }

    // Returns a template id, or null if the user should pick a template manually
    // (the standard "Print to PDF" template-selection modal).
    function getTemplateId(model, user) {
        // Admins always get the manual template picker, regardless of team membership.
        if (user.isAdmin && user.isAdmin()) {
            return null;
        }

        var teamsIds = user.get('teamsIds') || [];
        var isHr = teamsIds.indexOf(hrTeamId) !== -1;

        var subFieldName = getSubTypeFieldName(model);
        var subRequestType = subFieldName ? model.get(subFieldName) : null;

        if (isHr) {
            return pdfTemplateMap[subRequestType] || defaultTemplateId;
        }

        var isAutoPrintTeam = teamsIds.some(function (id) {
            return autoPrintTeamIds.indexOf(id) !== -1;
        });

        if (isAutoPrintTeam) {
            return autoPrintTemplateMap[subRequestType] || demandeDocumentTemplateId;
        }

        return null;
    }

    // Returns a ready-to-open PDF entry-point URL, or null if no auto-template rule applies.
    function getPrintUrl(model, user) {
        var templateId = getTemplateId(model, user);

        if (!templateId) {
            return null;
        }

        return '?entryPoint=pdf' +
            '&entityType=' + model.entityType +
            '&entityId=' + model.id +
            '&templateId=' + templateId;
    }

    return {
        getTemplateId: getTemplateId,
        getPrintUrl: getPrintUrl,
        needsFullModel: needsFullModel,
    };
});