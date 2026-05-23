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
            /* تقرأ من ملف logo.png المرفوع مباشرة على السيرفر لضمان ظهورها */
            background-image: linear-gradient(rgba(5, 5, 5, 0.85), rgba(5, 5, 5, 0.95)), url('logo.png');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
        }

        .header { text-align: center; padding: 60px 20px 30px; }
        .header img { width: 140px; height: 140px; border-radius: 50%; border: 4px solid var(--green); box-shadow: 0 0 20px rgba(46, 204, 113, 0.4); margin-bottom: 15px; object-fit: cover; }
        .header h1 { font-size: 3.5rem; font-weight: 900; }
        .header p { color: var(--green); letter-spacing: 3px; font-weight: bold; }

        .container { width: 90%; max-width: 1000px; margin: auto; flex: 1; padding-bottom: 60px; }

        details { 
            background: rgba(255, 255, 255, 0.03); 
            border: 1px solid rgba(46, 204, 113, 0.25); 
            border-radius: 12px; 
            margin-bottom: 15px; 
            transition: 0.3s; 
            overflow: hidden; 
            backdrop-filter: blur(6px);
        }
        
        details:hover {
            border-color: var(--green);
            box-shadow: 0 0 20px rgba(46, 204, 113, 0.15);
        }

        summary { padding: 22px; cursor: pointer; font-size: 1.3rem; font-weight: bold; display: flex; justify-content: space-between; align-items: center; list-style: none; color: var(--card-text); }
        summary::-webkit-details-marker { display: none; }

        /* تصليح الأيقونات لمنع ظهور علامات الاستفهام */
        summary::after { 
            content: "\f067"; 
            font-family: "Font Awesome 6 Free"; 
            font-weight: 900; 
            color: var(--green); 
            transition: 0.3s;
        }
        details[open] summary::after { content: "\f068"; }
        
        .content { padding: 25px; line-height: 1.9; background: rgba(0, 0, 0, 0.35); color: #eee; font-size: 1.05rem; border-top: 1px solid rgba(46, 204, 113, 0.15); }

        /* الفوتر المطور الصصحيح */
        footer {
            background: #0a0a0c;
            border-top: 4px solid var(--green);
            padding: 50px 20px;
            margin-top: auto;
            width: 100%;
            position: relative;
        }

        .footer-container { max-width: 1100px; margin: auto; }

        .online-box {
            background: rgba(46, 204, 113, 0.05);
            border: 1px solid rgba(46, 204, 113, 0.35);
            border-radius: 15px;
            padding: 25px;
            text-align: center;
            margin-bottom: 40px;
        }

        .status-btn { display: inline-block; background: var(--green); color: #000; text-decoration: none; padding: 12px 30px; border-radius: 8px; font-weight: bold; margin-top: 15px; transition: 0.3s; }
        .status-btn:hover { background: #27ae60; transform: translateY(-2px); }

        .footer-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 40px;
            text-align: right;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
            padding-bottom: 30px;
        }

        .footer-box h3 { color: var(--green); margin-bottom: 20px; font-size: 1.3rem; border-right: 3px solid var(--green); padding-right: 10px; }
        .contact-links { list-style: none; }
        .contact-links li { margin-bottom: 12px; }
        .contact-links a { color: #ccc; text-decoration: none; display: flex; align-items: center; gap: 12px; transition: 0.3s; }
        .contact-links a:hover { color: var(--green); padding-right: 5px; }

        .copyright {
            text-align: center;
            padding-top: 25px;
            color: #999;
            font-size: 1rem;
            font-weight: 500;
        }

        @media (max-width: 768px) {
            .footer-grid { grid-template-columns: 1fr; text-align: center; }
            .contact-links a { justify-content: center; }
            .footer-box h3 { border-right: none; border-bottom: 2px solid var(--green); display: inline-block; padding: 0 0 5px 0; }
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
                • احترام الجميع وعدم السب أو العنصرية.<br>
                • الالتزام بالشخصية داخل الرول بلاي.<br>
                • الخوف على الحياة (Fear RP) وقت التهديد أو الخطر.<br>
                • في حال الوفاة، يجب الانتظار في المستشفى لمدة 5 دقائق، إلا في حال وجود شخص يقوم بنقلك أو إسعافك.<br>
                • ممنوع استخدام معلومات خارج اللعبة (Meta Gaming).<br>
                • ممنوع القتل أو السرقة بدون سبب RP واضح.
            </div>
        </details>

        <details>
            <summary>قوانين الشرطة</summary>
            <div class="content">
                • احترام المواطنين والتعامل الرسمي.<br>
                • استخدام السلاح يكون عند الضرورة القصوى.<br>
                • الالتزام بالأوامر والرتب العسكرية.<br><br>
                <strong>6. قوانين الأمن العام والنظام:</strong><br>
                • المشاركة في تجمعات غير مرخصة ممنوعة.<br>
                • الإساءة لرجال الأمن أو تعطيلهم جريمة.<br>
                • أي سلوك يسبب فوضى أو تهديد للمجتمع عليه عقوبات.<br><br>
                <strong>7. قوانين السلاح:</strong><br>
                • يمنع منعاً باتاً استخدام السلاح في أي حال إلا إذا وجه السلاح عليك.<br>
                • (إذا وجه السلاح عليك تستخدم الصلاحيات المذكورة).<br><br>
                <strong>الصلاحيات:</strong><br>
                • (إطلاق علي العجلات).<br>
                • (نطحه وا تكلبش).<br>
                • (إطلاق علي السياره بتيزر).
            </div>
        </details>

        <details>
            <summary>قوانين العصابات</summary>
            <div class="content">
                • ممنوع ملاحقة العساكر بغرض المضايقات أو التدخل في عملهم أو الترصد لهم.<br>
                • يمنع منعاً باتاً التحلل أو الخروج من المدينة إلا بعد مرور 15 دقيقة من انتهاء السيناريو.<br><br>
                <strong>العداوة: يمنع تكوين عداوة لأسباب تافهة مثل:</strong><br>
                - مشادة كلامية وضرب بالأيدي.<br>
                - حادث بسيط بالسيارة.<br>
                - خطف بدون سبب منطقي.<br>
                * في هذه الحالات يجب التوجه لمركز الشرطة ورفع شكوى واستكمال الرول بلاي.<br><br>
                • ممنوع الدخول في أي سيناريو إلا إذا كانت بينكم معرفة رول بلاي لمدة لا تقل عن أسبوع.
            </div>
        </details>

        <details>
            <summary>قوانين العدل</summary>
            <div class="content">
                • وزارة العدل هي الجهة العليا المسؤولة عن النظام القضائي والدستوري.<br>
                • تولي أهمية كبرى لسير العدالة وتطبيق القوانين بما يضمن حماية حقوق كل مواطن.<br><br>
                <strong>1. الرتب الخاصة بوزارة العدل هي:</strong><br>
                - قاضي.<br>
                - مدعي عام.<br>
                - محامي.<br><br>
                <strong>2. يجب على المواطن تقدير مكانة الموظف المنتسب لوزارة العدل بمن فيهم المحامين.</strong><br><br>
                <strong>3. رخصة للمحامين:</strong> هي وثيقة قانونية تصدرها الجهات المختصة تتيح للمحامي ممارسة مهنة المحاماة وتمثيل الأفراد.<br><br>
                <strong>4. توكيل محامي:</strong><br>
                - للمواطن حق توكيل محامي خاص مقيد للأمور التجارية أو أمور خاصة أخرى.<br>
                - للمواطن حق توكيل محامي للقضية قائمة له أو عليه.<br>
                - للمواطن أن يكون لديه محامي مع إثبات ملكية التوكيل من مكتب المحامين.
            </div>
        </details>

        <details>
            <summary>قوانين الإساب الفنية أو الإسعاف</summary>
            <div class="content">• علاج الجميع بدون تمييز والالتزام بالواقعية الطبية.</div>
        </details>

        <details>
            <summary>قوانين المواطنين</summary>
            <div class="content">• الالتزام بالقوانين العامة للمدينة واحترام الجهات الحكومية.</div>
        </details>

        <details>
            <summary>قوانين الميكانيكي</summary>
            <div class="content">• تصليح السيارات بشكل واقعي والالتزام بأسعار السيرفر المعتمدة.</div>
        </details>
    </div>

    <footer>
        <div class="footer-container">
            <div class="online-box">
                <h2>من متواجد حالياً؟</h2>
                <a href="https://discord.com/widget?id=1273934372551524383&theme=dark" class="status-btn" target="_blank">عرض المتواجدين الآن</a>
            </div>

            <div class="footer-grid">
                <div class="footer-box">
                    <h3>روابط هامة</h3>
                    <ul class="contact-links">
                        <li><a href="#"><i class="fas fa-home"></i> الرئيسية</a></li>
                        <li><a href="#"><i class="fas fa-gavel"></i> القوانين</a></li>
                    </ul>
                </div>

                <div class="footer-box">
                    <h3>تواصل معنا</h3>
                    <ul class="contact-links">
                        <l
