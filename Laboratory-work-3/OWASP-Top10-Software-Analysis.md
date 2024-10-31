| Ідентифікатор та назва атаки (вразливості)                | Вимога (FR, NFR)                                                                                                     | Приклад вразливостей, які може використовувати атака                                                                 | Приклад запобігання успішної реалізації атаки                                                                 |
|---------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------|
| A01: Broken Access Control (Порушений контроль доступу)       | FR-02: Створення списку підлеглих працівників, FR-03: Створення індикаторів якості                                     | Невірне управління правами доступу дозволяє неавторизованим користувачам редагувати або переглядати чужих працівників.    | Використання чітких ролей і перевірки прав доступу для кожної дії в системі (RBAC — Role-Based Access Control).   |
| A02: Cryptographic Failures (Криптографічні помилки)          | NFR-02: Шифрування даних працівників, NFR-05: Доступність системи 24/7                                                  | Відсутність шифрування даних, що призводить до витоку особистої інформації працівників у випадку компрометації системи.  | Використання сильних алгоритмів шифрування для збереження та передачі даних (AES, RSA).                           |
|                                                               |                                                                                                                          | Використання слабких криптографічних алгоритмів або неправильне налаштування SSL/TLS протоколів.                          | Підтримка актуальних версій SSL/TLS та регулярний аудит безпеки шифрування.                                       |
| A03: Injection (SQL, NoSQL, OS, LDAP Injection)               | FR-01: Створення облікового запису, FR-06: Редагування індикаторів якості                                               | SQL-ін'єкції під час створення облікового запису можуть дозволити зловмиснику отримати доступ до всіх даних користувачів.  | Використання підготовлених запитів (Prepared Statements) і ORM для захисту від SQL-ін'єкцій.                      |
|                                                               |                                                                                                                          | Ін'єкції дозволяють змінювати дані індикаторів через вразливі форми введення без належної перевірки вхідних даних.         | Валідація вхідних даних і використання підготовлених запитів для взаємодії з базою даних.                         |
| A04: Insecure Design (Ненадійне проектування)                 | FR-04: Налаштування умов для підрахунку, NFR-04: Зручний інтерфейс для користувача                                       | Поганий дизайн дозволяє неправильно налаштувати умови для обчислення індикаторів, що впливає на точність розрахунків.     | Використання перевірених шаблонів проектування та ретельна перевірка вимог на етапі дизайну.                      |
|                                                               |                                                                                                                          | Неправильний UX/UI дизайн призводить до того, що користувачі допускають помилки в налаштуванні або підрахунку індикаторів.| Проведення тестування з користувачами і дотримання кращих практик з UX/UI дизайну.                                 |
| A05: Security Misconfiguration (Неправильна конфігурація безпеки) | NFR-05: Доступність системи 24/7                                                                                         | Неправильна конфігурація сервера або бази даних може призвести до вразливостей для зловмисників.                           | Регулярне оновлення серверів і ПЗ, використання безпечних конфігурацій за замовчуванням.                          |
| A06: Vulnerable and Outdated Components (Вразливі або застарілі компоненти) | NFR-03: Підтримка до 100 одночасних користувачів                                                                           | Використання застарілих компонентів може призвести до того, що система не витримує навантаження або має вразливі бібліотеки. | Постійне оновлення використовуваних бібліотек, фреймворків і компонентів додатку.                                 |
| A07: Identification and Authentication Failures (Помилки ідентифікації та автентифікації) | FR-01: Створення облікового запису                                                                                         | Відсутність належної автентифікації дозволяє зловмисникам створювати фальшиві облікові записи і отримувати доступ до даних.| Використання багатофакторної автентифікації (MFA) та надійних політик паролів.                                    |
| A08: Software and Data Integrity Failures (Помилки цілісності ПЗ та даних) | NFR-01: Генерація звітів за не більше ніж 5 секунд                                                                         | Під час генерації звітів можуть бути використані застарілі дані або пошкоджені файли, що впливає на результати обчислень.  | Забезпечення цілісності даних за допомогою контрольних сум і перевірки версій даних.                              |
| A09: Security Logging and Monitoring Failures (Помилки логування та моніторингу безпеки) | NFR-05: Доступність системи 24/7                                                                                         | Відсутність належного моніторингу подій безпеки може дозволити атакам відбуватися непомітно протягом тривалого часу.       | Налаштування автоматичних оповіщень про підозрілі дії та регулярний моніторинг системи безпеки.                    |
| A10: Server-Side Request Forgery (SSRF) (Підробка запитів з боку сервера) | FR-05: Генерація звітів у форматі Excel                                                                                   | SSRF-атака може використовуватися для отримання доступу до внутрішніх систем під час генерації звітів або інших процесів.  | Обмеження доступу серверу до внутрішніх служб і перевірка вихідних запитів.                                        |