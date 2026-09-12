# AssetFlowCRM

Internal IT asset and request management system, built on top of **EspoCRM**, with a companion **Django webhook** for automated email notifications.

📖 **[Read the full documentation](https://ismail-hami.github.io/AssetFlowCRM/)**

---

## What is this project?

AssetFlowCRM is a customized EspoCRM instance used internally for:
- **IT requests** (CITRequest) — hardware/software requests from employees
- **HR requests** (CHRRequest) — HR-related requests and approvals
- **Software & license tracking** (CSoftware, CLicenes)
- **Product/inventory management** (CProduct, CCategory)

It's built for three roles: **Employee**, **HR Manager**, and **IT Manager**, each with their own permissions and views.

## Project structure

```
AssetFlowCRM/
├── app/                    # EspoCRM application (core + custom modules)
│   └── custom/Espo/Custom/ # Our 5 custom modules (CHRRequest, CITRequest,
│                            # CProduct, CSoftware, CCategory)
├── database/
│   └── assetflowcrm_db.sql # Database schema/dump
├── docs/                   # Documentation website (hosted via GitHub Pages)
└── espocrm_webhook/        # Django app that listens for EspoCRM events
                             # and sends HR email notifications
```

## Tech stack

| Component        | Stack                                      |
|-------------------|---------------------------------------------|
| CRM               | EspoCRM 9.2.0, PHP 8.2, MariaDB             |
| Web server        | IIS (Windows Server)                        |
| Notifications     | Django + Gmail SMTP                         |
| Docs              | Static HTML/CSS/JS, hosted on GitHub Pages  |

## Setup

### 1. EspoCRM app
```bash
cd app
composer install
```
Copy `data/config.php.example` (if provided) to `data/config.php` and configure your database connection.

### 2. Database
Import the schema:
```bash
mysql -u <user> -p <database_name> < database/assetflowcrm_db.sql
```

### 3. Django webhook
```bash
cd espocrm_webhook/espocrm_webhook
python -m venv .venv
.venv\Scripts\activate      # Windows
pip install -r requirements.txt
cp .env.example .env        # then fill in your Gmail SMTP credentials
python manage.py migrate
python manage.py runserver
```

### 4. Cron
EspoCRM's `cron.php` needs to run every minute. On Windows, this is handled via a scheduled task (`run_cron.bat` + Task Scheduler) — **do not edit the schedule through the Task Scheduler GUI**, as it silently resets the interval to 5 minutes. Edit `run_cron.bat` and re-run `schtasks` instead.

## Security notes

- Never commit `.env`, `config.php`, or any file containing SMTP/DB credentials.
- HTTPS is not yet enabled in production — see open items below.

## Known open items

- [ ] HTTPS not yet enforced (redirect rules pending)
- [ ] Directory browsing still enabled on some paths
- [ ] No brute-force protection on login yet

## License

Internal project — not licensed for external distribution.
