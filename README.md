<!DOCTYPE html>
<html lang="ar" dir="rtl">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>قوانين سيرفر NAZWA</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --green: #2ecc71;
            --dark: #050506;
            --card: rgba(255, 255, 255, 0.04);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: #050506;
            color: white;
            font-family: Tahoma, sans-serif;
            min-height: 100vh;
            overflow-x: hidden;
        }

        /* الخلفية */
        .hero-bg {
            position: fixed;
            inset: 0;
            z-index: -1;
            background: linear-gradient(rgba(5, 5, 5, 0.9), rgba(5, 5, 5, 0.97)), url('logo.png');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
        }

        /* الهيدر */
        .header {
            text-align: center;
            padding: 60px 20px 30px;
        }

        .header img {
            width: 140px;
            height: 140px;
            border-radius: 50%;
            border: 4px solid var(--green);
            object-fit: cover;
            box-shadow: 0 0 25px rgba(46, 204, 113, 0.5);
            margin-bottom: 15px;
        }

        .header h1 {
            font-size: 3rem;
            font-weight: 900;
            margin-bottom: 10px;
        }

        .header p {
            color: var(--green);
            letter-spacing: 3px;
            font-weight: bold;
        }

        /* الكونتينر */
        .container {
            width: 90%;
            max-width: 1000px;
            margin: auto;
            padding-bottom: 50px;
        }

        /* القوانين */
        details {
            background: var(--card);
            border: 1px solid rgba(46, 204, 113, 0.25);
            border-radius: 14px;
            margin-bottom: 16px;
            overflow: hidden;
            transition: 0.3s;
            backdrop-filter: blur(6px);
        }

        details:hover {
            border-color: var(--green);
            box-shadow: 0 0 20px rgba(46, 204, 113, 0.15);
        }

        summary {
            padding: 20px;
            cursor: pointer;
            font-size: 1.15rem;
            font-weight: bold;
            list-style: none;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        summary::-webkit-details-marker {
            display: none;
        }

        summary::after {
            content: "\f067";
            font-family: "Font Awesome 6 Free";
            font-weight: 900;
            color: var(--green);
            transition: 0.3s;
        }

        details[open] summary::after {
            content: "\f068";
        }

        .content {
            padding: 20px;
            line-height: 2;
            color: #ddd;
            background: rgba(0, 0, 0, 0.35);
            border-top: 1px solid rgba(46, 204, 113, 0.15);
        }

        /* الفوتر */
        footer {
            background: rgba(10, 10, 12, 0.96);
            border-top: 3px solid var(--green);
            padding: 40px 20px;
            margin-top: 40px;
        }

        .footer-container {
            max-width: 1100px;
            margin: auto;
        }

        .online-box {
            background: rgba(46, 204, 113, 0.05);
            border: 1px solid rgba(46, 204, 113, 0.35);
            border-radius: 12px;
            padding: 25px;
            text-align: center;
            margin-bottom: 30px;
        }

        .online-box h2 {
            margin-bottom: 15px;
        }

        .status-btn {
            display: inline-block;
            background: var(--green);
            color: black;
            text-decoration: none;
            padding: 12px 28px;
            border-radius: 10px;
            font-weight: bold;
            transition: 0.3s;
        }

        .status-btn:hover {
            background: #27ae60;
            transform: scale(1.05);
        }

        /* روابط */
        .footer-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
        }

        .footer-box h3 {
            color: var(--green);
            margin-bottom: 15px;
        }

        .contact-links {
            list-style: none;
        }

        .contact-links li {
            margin-bottom: 12px;
        }

        .contact-links a {
            color: #ccc;
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 10px;
            transition: 0.3s;
        }

        .contact-links a:hover {
            color: var(--green);
            padding-right: 5px;
        }

        .copyright {
            text-align: center;
            margin-top: 30px;
            padding-top: 20px;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: #777;
            font-size: 0.9rem;
        }

        /* الجوال */
        @media (max-width: 768px) {
            .header h1 {
                font-size: 2.2rem;
            }

            .header img {
                width: 110px;
                height: 110px;
            }

            .footer-grid {
                grid-template-columns: 1fr;
                text-align: center;
            }

            .contact-links a {
                justify-content: center;
            }
        }
    </style>
</head>

<body>

    <div class="hero-bg"></div>

    <div class="header">
        <img src="logo.png" alt="NAZWA Logo">
        <h1>قوانين</h1>
        <p>NAZWA RP</p>
    </div>

    <div class="container">

        <details>
            <summary>قوانين عامة</summary>
            <div class="content">
                • احترام الجميع وعدم السب أو الإهانة.<br>
                • الالتزام بالشخصية داخل الرول بلاي.<br>
                • الخوف على الحياة (Fear RP).<br>
                • في حال الوفاة، يجب الانتظار في المستشفى لمدة 5 دقائق، إلا في حال وجود شخص يقوم بنقلك أو إسعافك.<br>
                • يمنع التخريب أو إفساد متعة اللعب.
            </div>
        </details>

        <details>
            <summary>قوانين الشرطة</summary>
            <div class="content">
                <strong>قوانين الأمن العام:</strong><br>
                • المشاركة في تجمعات غير مرخصة ممنوعة.<br>
                • الإساءة لرجال الأمن أو تعطيلهم تعتبر جريمة.<br>
                • أي سلوك يسبب فوضى أو تهديد للمجتمع عليه عقوبات.<br><br>

                <strong>قوانين السلاح:</strong><br>
                • يمنع استخدام السلاح إلا في حالات التهديد المباشر.<br>
                • يمنع إطلاق النار العشوائي.<br><br>

                <strong>الصلاحيات:</strong><br>
                • إطلاق النار على العجلات عند الحاجة.<br>
                • النطح والتكبيل حسب الموقف.<br>
                • استخدام التيزر بشكل قانوني.
            </div>
        </details>

        <details>
            <summary>قوانين العصابات</summary>
            <div class="content">
                • يمنع ملاحقة رجال الأمن بدون سبب منطقي.<br>
                • يمنع التحلل قبل مرور 15 دقيقة.<br>
                • يمنع إعلان العداوات لأسباب تافهة.
            </div>
        </details>

        <details>
            <summary>قوانين العدل</summary>
            <div class="content">
                • الرتب تشمل: قاضي، مدعي عام، ومحامي.<br>
                • يحق للمواطن توكيل محامٍ مع إثبات رسمي.
            </div>
        </details>

        <details>
            <summary>قوانين الإسعاف</summary>
            <div class="content">
                • علاج جميع الحالات دون تمييز.<br>
                • الالتزام بالواقعية الطبية أثناء أداء المهام.
            </div>
        </details>

        <details>
            <summary>قوانين المواطنين</summary>
            <div class="content">
                • الالتزام بقوانين المدينة العامة.<br>
                • يمنع التخريب أو إثارة الفوضى.
            </div>
        </details>

        <details>
            <summary>قوانين الميكانيكي</summary>
            <div class="content">
                • الالتزام بالتصليح الواقعي.<br>
                • الالتزام بالأسعار المعتمدة داخل المدينة.
            </div>
        </details>

    </div>

    <footer>
        <div class="footer-container">
            <div class="online-box">
                <h2>من المتواجد حالياً؟</h2>
                <a href="https://discord.com/widget?id=1273934372551524383&theme=dark" class="status-btn" target="_blank">
                    عرض المتواجدين
                </a>
            </div>

            <div class="footer-grid">
                <div class="footer-box">
                    <h3>روابط</h3>
                    <ul class="contact-links">
                        <li>
                            <a href="#">
                                <i class="fas fa-home"></i>
                                الرئيسية
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fas fa-file-alt"></i>
                                القوانين
                            </a>
                        </li>
                    </ul>
                </div>

                <div class="footer-box">
                    <h3>تواصل معنا</h3>
                    <ul class="contact-links">
                        <li>
                            <a href="https://discord.gg/rGkrgHKK6j" target="_blank">
                                <i class="fab fa-discord"></i>
                                ديسكورد
                            </a>
                        </li>
                        <li>
                            <a href="https://www.instagram.com/nazwa_rp_1" target="_blank">
             
