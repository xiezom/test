<!DOPCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>4eachblog 掲示板</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    
    <body>
        
    <?php
        
    mb_internal_encoding("utf8");
    $pdo = new PDO("mysql:dbname=lesson01_yh;host=localhost;","root","mysql");
    $stmt = $pdo->query("select * from 4each_keijiban");
 
    ?>
        
        
        <div class="logo">
        <img src="4eachblog_logo.jpg">
        </div>
        
        <header> 
            <ul>
            <li>トップ</li>
            <li>プロフィール</li>
            <li>4eachについて</li>
            <li>登録フォーム</li>
            <li>問い合わせ</li>
            <li>その他</li>
            </ul>
        </header>
        
        <main>
            
            <div class="main-container">
                
            <div class="left">
            <h1 class="top-title">プログラミングに役立つ掲示板</h1>
               <div class="nyuryoku-form">   
               <form method="post" action="insert.php">
                    <h4>入力フォーム</h4>
                    
                    <div class="content">
                       <label><p>ハンドルネーム</p>
                        <input class="nyuryoku" size="30" type="text" class="text" name="handlename"></label>
                    </div>
                                        
                    <div class="content">
                        <label><p>タイトル</p>
                        <input class="nyuryoku" size="30" type="text" class="text" name="title"></label>
                    </div>
                                        
                    <div class="content">
                        <label><p>コメント</p>
                    <textarea class="nyuryoku"rows="7" cols="60" name="comments"></textarea></label>
                    </div>
                    
                    <div class="content">
                        <input class="btn" type="submit" value="投稿する">
                    </div>
                </form>
                </div>
            <div class="kiji-container">        
        <?php

            while($row = $stmt->fetch()){
                
                echo "<div class='kiji'>";
                echo "<h3>".$row['title']."</h3>";
                echo "<div class='naiyou'>";
                echo $row['comments'];
                echo "<div class='handlename'>posted by".$row['handlename']."</div>";
                echo "</div>";
                echo "</div>";
            }

        ?>
            </div>
            </div>
 
            <div class="right">
               <div>
                   
                <h2 class="title">人気の記事</h2>
                <ul>
                    <li>PHPオススメ本</li>
                    <li>PHP MyAdminの使い方</li>
                    <li>いま人気のエディタTop5</li>
                    <li>HTMLの基礎</li>
                </ul>
                
                <h2 class="title">オススメリンク</h2>
                <ul>
                    <li>インターノウス株式会社</li>
                    <li>XAMPPのダウンロード</li>
                    <li>Eclipseのダウンロード</li>
                    <li>Bracktsのダウンロード</li>
                </ul>
                
                <h2 class="title">カテゴリ</h2>
                <ul>
                    <li>HTML</li>
                    <li>PHP</li>
                    <li>MySQL</li>
                    <li>JavaScript</li>
                </ul>
                   
               </div>
            </div>
          </div>  
        </main>
        
        <footer>
            copyright c internous | 4each blog is the one which provides A to Z about programing.
        </footer>
        
    </body>
</html>