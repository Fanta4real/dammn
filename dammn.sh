html
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login and Signup</title>
    <style>
      
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      
      body {
        font-family: Arial, sans-serif;
        background-color: #e6f0ff;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        overflow-y: auto;
      }

      
      .container {
        width: 100%;
        max-width: 400px;
        text-align: center;
        background-color: white;
        padding: 40px 25px;
        border-radius: 8px;
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        position: relative;
        margin-top: 20px;
      }

      
      .logo {
        width: 100px;
        position: absolute;
        top: 10px;
        left: 50%;
        transform: translateX(-50%);
        animation: moveLogo 4s infinite alternate ease-in-out;
      }

      @keyframes moveLogo {
        from {
          left: 0;
        }
        to {
          left: calc(100% - 100px);
        }
      }

     
      h2 {
        margin-top: 80px;
        color: #004080;
      }

      
      .input-group {
        margin-bottom: 15px;
        text-align: left;
      }

      .input-group label {
        font-size: 14px;
        color: #004080;
        margin-bottom: 5px;
        display: block;
      }

      .input-group input,
      .input-group select {
        width: 100%;
        padding: 10px;
        border: 1px solid #80b3ff;
        border-radius: 4px;
        font-size: 14px;
      }

      
      .phone-group {
        display: flex;
        justify-content: space-between;
        align-items: center;
      }

      .phone-group select,
      .phone-group input {
        width: 48%;
      }

      
      .btn {
        width: 100%;
        padding: 10px;
        font-size: 14px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        background-color: #007bff;
        color: white;
        margin-bottom: 15px;
      }

      .btn:hover {
        background: #004080;
      }

    
      .footer-link {
        font-size: 14px;
        margin-top: 10px;
      }

      .footer-link a {
        color: #007bff;
        text-decoration: none;
      }

      .footer-link a:hover {
        text-decoration: underline;
      }
    </style>
  </head>
  <body>
    
    <div class="container" id="signup-section">
      <img src="https://i.postimg.cc/QMscq1st/IMG-20241125-WA0053.jpg" alt="Logo" class="logo">
      <h2>إنشاء حساب</h2>
      <form id="signup-form">
        <div class="input-group">
          <label for="account-type">اختر نوع الحساب</label>
          <select id="account-type" required>
            <option value="">اختر نوع الحساب</option>
            <option value="business">حساب تجاري</option>
            <option value="user">حساب مستخدم</option>
          </select>
        </div>
        <div class="input-group">
          <label for="username">اسم المستخدم</label>
          <input type="text" id="username" placeholder="أدخل اسم المستخدم" required>
        </div>
        <div class="input-group">
          <label for="email">البريد الإلكتروني</label>
          <input type="email" id="email" placeholder="أدخل بريدك الإلكتروني" required>
        </div>
        <div class="phone-group">
          <div class="input-group">
            <label for="country-code">كود الدولة</label>
            <select id="country-code" required>
              <option value="+249">السودان (+249)</option>
              
            </select>
          </div>
          <div class="input-group">
            <label for="phone">رقم الهاتف</label>
            <input type="tel" id="phone" placeholder="أدخل رقم هاتفك" required>
          </div>
        </div>
        <div class="input-group">
          <label for="password">كلمة السر</label>
          <input type="password" id="password" placeholder="أدخل كلمة السر" required>
        </div>
        <div class="input-group">
          <label for="confirm-password">تأكيد كلمة السر</label>
          <input type="password" id="confirm-password" placeholder="أعد كتابة كلمة السر" required>
        </div>
        <button type="submit" class="btn">إنشاء حساب</button>
        <div class="footer-link">
          <p>هل لديك حساب بالفعل؟ <a href="#login-section" onclick="showLoginSection()">تسجيل الدخول</a></p>
        </div>
      </form>
    </div>

    
    <div class="container" id="login-section" style="display: none;">
      <img src="https://i.postimg.cc/QMscq1st/IMG-20241125-WA0053.jpg" alt="Logo" class="logo">
      <h2>تسجيل الدخول</h2>
      <form id="login-form">
        <div class="input-group">
          <label for="username">اسم المستخدم</label>
          <input type="text" id="username" placeholder="أدخل اسم المستخدم" required>
        </div>
        <div class="input-group">
          <label for="password">كلمة السر</label>
          <input type="password" id="password" placeholder="أدخل كلمة السر" required>
        </div>
        <button type="submit" class="btn">تسجيل الدخول</button>
        <div class="footer-link">
          <p>لا تملك حساب؟ <a href="#signup-section" onclick="showSignupSection()">إنشاء حساب</a></p>
        </div>
      </form>
    </div>

    <script>
      
      const accountTypeSelect = document.getElementById('account-type');
      accountTypeSelect.addEventListener('change', function() {
        if (this.value === 'business') {
          alert('عذراً، الحساب التجاري غير متاح حالياً');
        }
      });

      
      function showLoginSection() {
        document.getElementById('signup-section').style.display = 'none';
        document.getElementById('login-section').style.display = 'block';
      }

      
      function showSignupSection() {
        document.getElementById('login-section').style.display = 'none';
        document.getElementById('signup-section').style.display = 'block';
      }

      
      const signupForm = document.getElementById('signup-form');
      signupForm.addEventListener('submit', function(event) {
        event.preventDefault();
        alert('تم إنشاء الحساب بنجاح!');
      });

      const loginForm = document.getElementById('login-form');
      loginForm.addEventListener('submit', function(event) {
        event.preventDefault();
        alert('تم تسجيل الدخول بنجاح!');
      });
    </script>
  <?php
// ... (معلومات الاتصال بقاعدة البيانات)

// توليد كود عشوائي
function generateRandomString($length = 6) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString   
 = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;   

}

// عند إرسال نموذج التسجيل
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // ... (تحقق من البيانات)
    $verificationCode = generateRandomString();

    // حفظ البيانات في قاعدة البيانات
    $sql = "INSERT INTO users (name, email, password, verification_code) VALUES (?, ?, ?, ?)";
    // ... (تنفيذ الاستعلام)

    // إرسال البريد الإلكتروني
    // ... (استخدام PHPMailer أو أي مكتبة أخرى لإرسال البريد)
}
?> 
</body>
</html>
