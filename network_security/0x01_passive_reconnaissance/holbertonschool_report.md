# Passive Reconnaissance Report: holbertonschool.com

## 1. Domain Overview
- **Domain:** holbertonschool.com
- **Primary Scope:** Education / Technology training

## 2. IP Ranges & Infrastructure
Shodan kəşfiyyatı nəticəsində müəyyən edilmiş əsas IP intervalları və hostinq provayderləri:

| Asset / Service | IP Address / Range | Provider |
|-----------------|--------------------|----------|
| Main Website    | 75.2.70.75         | Amazon Data Services |
| Redirection     | 99.83.190.102      | Amazon Data Services |
| API / Subdomains| 54.0.0.0/8         | AWS (Amazon Web Services) |
| Webflow Hosting | 151.139.128.10     | StackPath (Highwinds) |

## 3. Technologies & Frameworks
Alt domenlərdə və əsas serverlərdə istifadə olunan texnologiyalar:

### Web Servers & CDNs
- **Nginx:** Çox vaxt proksi və ya əsas server kimi istifadə olunur.
- **Amazon CloudFront:** Statik kontentin paylanması (CDN) üçün.
- **Webflow:** Əsas səhifənin dizaynı və hostinqi üçün.

### Frameworks & Tools
- **Ruby on Rails:** Bəzi daxili tətbiqlər və platformalar üçün.
- **React.js:** Front-end interfeysləri üçün.
- **Google Workspace:** E-poçt və daxili əməliyyatlar (MX qeydləri ilə təsdiqlənmişdir).

### Security & Headers
- **HSTS:** HTTPS bağlantısını məcburi etmək üçün.
- **Let's Encrypt / Amazon SSL:** Sertifikat idarəetməsi üçün.

## 4. Summary of Findings
Holberton School-un infrastrukturu yüksək dərəcədə bulud (Cloud) texnologiyalarına əsaslanır. Əsasən AWS (Amazon Web Services) və Webflow hostinq həllərindən istifadə edilir. Passiv kəşfiyyat zamanı birbaşa kritik boşluq aşkar edilməmişdir, lakin çoxlu sayda alt domenin mövcudluğu hücum səthinin (attack surface) geniş olduğunu göstərir.
