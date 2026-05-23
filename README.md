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
            --dark-green: rgba(46, 204, 113, 0.1); 
            --dark: #050506;
            --card-text: #ffffff;
        }

        * { margin: 0; padding: 0; box-sizing: border-box; }

        body {
            background: var(--dark);
            color: white;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .hero-bg {
            position: fixed;
            inset: 0;
            z-index: -1;
            /* تم ربط الخلفية بالصورة المرفوعة مباشرة */
            background-image: linear-gradient(rgba(5, 5, 5, 0.85), rgba(5, 5, 5, 0.95)), url('logo.png');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
        }

        .header { text-align: center; padding: 60px 20px 30px; }
        /* تم تعديل الشعار ليقرأ من السيرفر */
        .header img { width: 140px; height: 140px; border-radius: 50%; border: 4px solid var(--green); box-shadow: 0 0 20px rgba(46, 204, 113, 0.4); margin-bottom: 15px; object-fit: cover; }
        .header h1 { font-size: 3.5rem; font-weight: 900; }
        .header p { color: var(--green); letter-spacing: 3px; font-weight: bold; }

        .container { width: 90%; max-width: 1000px; margin: auto; flex: 1; padding-bottom: 40px; }

        details { 
            background: rgba(255, 255, 255, 0.03); 
            border: 1px solid rgba(46, 204, 113, 0.3); 
            border-radius: 12px; 
            margin-bottom: 15px; 
            transition: all 0.3s ease; 
            backdrop-filter: blur(5px);
        }
        
        details:hover {
            border-color: var(--green);
            background: rgba(46, 204, 113, 0.05);
            box-shadow: 0 0 15px rgba(46, 204, 113, 0.1);
        }

        summary { padding: 20px; cursor: pointer; font-size: 1.2rem; font-weight: bold; display: flex; justify-content: space-between; align-items: center; list-style: none; color: var(--card-text); }
        summary::-webkit-details-marker { display: none; } 
        
        summary::after { 
            content: "\f067"; 
            font-family: "Font Awesome 6 Free"; 
            font-weight: 900; 
            color: var(--green); 
            transition: transform 0.3s ease;
        }
        details[open] summary::after { 
            content: "\f068"; 
        }
        
        .content { 
            padding: 20px; 
            line-height: 1.8; 
            background: rgba(0, 0, 0, 0.4); 
            color: #eee; 
            border-top: 1px solid rgba(46, 204, 113, 0.2);
        }

        footer {
            background: rgba(10, 10, 12, 0.95);
            border-top: 3px solid var(--green);
            padding: 40px 20px;
            margin-top: auto;
            width: 100%;
            backdrop-filter: blur(10px);
        }

        .footer-container { max-width: 1100px; margin: auto; }

        .online-box {
            background: rgba(46, 204, 113, 0.05);
            border: 1px solid rgba(46, 204, 113, 0.4);
            border-radius: 12px;
            padding: 20px;
            text-align: center;
            margin-bottom: 30px;
        }

        .status-btn { 
            display: inline-block; 
            background: var(--green); 
            color: #000; 
            text-decoration: none; 
            padding: 10px 25px; 
            border-radius: 8px; 
            font-weight: bold; 
            margin-top: 10px; 
            transition: 0.3s;
        }
        .status-btn:hover {
            background: #27ae60;
            box-shadow: 0 0 15px rgba(46, 204, 113, 0.4);
        }

        .footer-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
            text-align: right;
        }

        .footer-box h3 { color: var(--green); margin-bottom: 15px; font-size: 1.2rem; border-bottom: 2px solid rgba(46, 204, 113, 0.2); padding-bottom: 5px; display: inline-block; }
        .contact-links { list-style: none; }
        .contact-links li { margin-bottom: 10px; }
        .contact-links a { color: #ccc; text-decoration: none; display: flex; align-items: center; gap: 10px; font-size: 0.95rem; transition: 0.2s; }
        .contact-links a:hover { color: var(--green); padding-right: 5px; }

        .copyright {
            text-align: center;
            margin-top: 30px;
            padding-top: 20px;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: #777;
            font-size: 0.9rem;
        }

        @media (max-width: 768px) {
            .footer-grid { grid-template-columns: 1fr; text-align: center; gap: 20px; }
            .contact-links a { justify-content: center; }
            .contact-links a:hover { padding-right: 0; }
            .header h1 { font-size: 2.5rem; }
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
            <div class="content">• احترام الجميع وعدم السب.<br>• الالتزام بالشخصية داخل الرول بلاي.<br>• الخوف على الحياة (Fear RP).</div>
        </details>

        <details>
            <summary>قوانين الشرطة</summary>
            <div class="content">
                <strong>6. قوانين الأمن العام والنظام:</strong><br>
                • المشاركة in تجمعات غير مرخصة ممنوعة.<br>
                • الإساءة لرجال الأمن أو تعطيلهم جريمة.<br>
                • أي سلوك يسبب فوضى عليه عقوبات.<br><br>
                <strong>7. قوانين السلاح:</strong><br>
                • يمنع استخدام السلاح إلا إذا وجه السلاح عليك.<br><br>
                <strong>الصلاحيات:</strong><br>
                • إطلاق على العجلات / نطحه وتكلبش / إطلاق تيزر.
            </div>
        </details>

        <details>
            <summary>قوانين العصابات</summary>
            <div class="content">• يمنع ملاحقة العساكر.<br>• يمنع التحلل إلا بعد 15 دقيقة.<br>• لا عداوة لأسباب تافهة.</div>
        </details>

        <details>
            <summary>قوانين العدل</summary>
            <div class="content">
                • الرتب: قاضي، مدعي عام، محامي.<br>
                • للمواطن حق توكيل محامي مع إثبات ملكية التوكيل.
            </div>
        </details>

        <details>
            <summary>قوانين الإسعاف</summary>
            <div class="content">• علاج الجميع والالتزام بالواقعية الطبية.</div>
        </details>

        <details>
            <summary>قوانين المواطنين</summary>
            <div class="content">• الالتزام بقوانين المدينة العامة وعدم التخريب.</div>
        </details>

        <details>
            <summary>قوانين الميكانيكي</summary>
            <div class="content">• تصليح واقعي والالتزام بالأسعار المعتمدة.</div>
        </details>
    </div>

    <footer>
        <div class="footer-container">
            <div class="online-box">
                <h2 style="font-size: 1.1rem; margin-bottom: 5px;">من متواجد حالياً؟</h2>
                <a href="https://discord.com/widget?id=1273934372551524383&theme=dark" class="status-btn" target="_blank">عرض المتواجدين</a>
            </div>

            <div class="footer-grid">
                <div class="footer-box">
                    <h3>روابط</h3>
                    <ul class="contact-links">
                        <li><a href="#"><i class="fas fa-home"></i> الرئيسية</a></li>
                        <li><a href="#"><i class="fas fa-file-alt"></i> القوانين</a></li>
                    </ul>
                </div>

                <div class="footer-box">
                    <h3>تواصل معنا</h3>
                    <ul class="contact-links">
                        <li><a href="https://discord.gg/rGkrgHKK6j" target="_blank"><i class="fab fa-discord"></i> ديسكورد</a></li>
                        <li><a href="https://www.instagram.com/nazwa_rp_1" target="_blank"><i class="fab fa-instagram"></i> إنستغرام</a></li>
                    </ul>
                </div>

                <div class="footer-box">
                    <h3>عن السيرفر</h3>
                    <p style="color: #888; font-size: 0.85rem; line-height: 1.4;">
                        سيرفر NAZWA RP يقدم تجربة رول بلاي واقعية واحترافية لبناء مجتمع منظم.
                    </p>
                </div>
            </div>

            <div class="copyright">
                جميع الحقوق محفوظة © 2026 NAZWA RP
            </div>
        </div>
    </footer>
</body>
</html>
