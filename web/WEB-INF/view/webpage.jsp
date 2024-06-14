<%-- 
    Document   : webpage
    Created on : Apr 1, 2024, 10:54:18 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>About Me</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"> 
        <style>
	body {
			font-family: Segoe UI, Tahoma, Geneva, Verdana, sans-serif;
			background-color: #5084CC;
			margin: 0;
			padding: 0;
			line-height: 1.6;
		}
        sub {
            vertical-align: sub;
            font-size: smaller;
        }
		header, footer {
			background-color: #5084CC;
			color: #fff;
			padding: 10px;
			text-align: center;
		}
		#home {
			width: 1479px; 
			height: 655px; 
			background-image: url('image7.jpg');
			background-size: cover;
			background-position: center;
			background-repeat: no-repeat;
		}
		#home h2 {
			font-size: 50px;
			color: #fff; 
			text-align: center;
		}

		#home p {
			font-size: 18px; 
			color: white; 
			line-height: 1.6; 
			text-align: center;
			padding-top: 65px;
		}
		div {
			justify-content: center; 
			align-items: center;
		}
		main {
			display: flex;
			justify-content: space-between;
			padding: 20px;
			border-radius: 20px;
		}
		p {
			text-indent: 1cm;
		}
        .quote {
            font-style: italic;
            color: #666;
        }

		section {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
		code {
			font-size: 15px;
		}

		article, aside {
			flex-basis: 48%;
		}
		pre {
			font-size: 15px;
			text-align: center;
		}
		article {
			background-color: #fff;
			padding: 20px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}
		#about {
			border-radius: 20px;
		}
		#about h2,
		#contact h2,
		#gallery h2{
			color: #5084CC;
		}
		aside {
			background-color: #fff;
			border-radius: 20px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
			display: flex;
			justify-content: center;
			align-items: center;
		}
		aside img {
			max-width: 100%;
			height: 100%;
			border-radius: 20px; /* Ensure the image takes the rounded corners of the aside */
		}
		strong {
			background-color:#5084CC;
			font-size: 50px;
			color: #fff;
			padding: 10px;
			text-align: center;
			margin-top: 20px;
		}		

		footer {
			background-color: #5084CC;
			color: #fff;
			padding: 10px;
			text-align: center;
			margin-top: 20px;
		}
		#personal {
			background-color: #fff;
			padding: 20px;
			margin: 20px;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}

		#personal h2 {
			color: #5084CC;
			font-size: 24px;
			margin-bottom: 20px;
		}

		#personal table {
			width: 100%;
			border-collapse: collapse;
		}

		#personal table colgroup col {
			width: 100px;
		}

		#personal table th {
			text-align: center;
		}
		#personal table td {
			padding: 10px;
			border-bottom: 1px solid #5084CC;
			text-align: left;
		}

		#personal table th {
			background-color: #5084CC;
		}

		#personal table tfoot td {
			background-color: #5084CC;
			font-style: italic;
		}
		#gallery{
			background-color: #fff;
			padding: 20px;
			margin: 20px;
			margin-bottom: 0px;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}
		#contact{
			background-color: #fff;
			padding: 20px;
			margin: 20px;
			margin-top: 0px;
			margin-bottom: 0px;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}
		#more{
			background-color: #fff;
			padding: 20px;
			margin: 20px;
			margin-top: 0px;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #5084CC;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #5084CC;
        }

        tr:not(:last-child) {
            border-bottom: 1px solid #5084CC;
        }
		dl {
			margin: 0;
			padding: 0;
		}

		dt {
			font-weight: bold;
		}
		dd {
			margin-left: 0;
			margin-bottom: 10px;
		}
        .images, .videos, .audio, .objects {
            display: none;
        }
        .gallery figure {
            margin: 0;
            padding: 0;
            border: 2px solid #ccc;
            border-radius: 10px;
            overflow: hidden;
            position: relative;
			display: flex;
            width: 300px;
            max-width: 100%;
        }
		.gallery figure img {
			width: 100%; /* Make the image fill the width of the figure */
			height: auto; /* Maintain aspect ratio */
			display: block;
		}
        .gallery figure audio,
        .gallery figure video{
            width: 100%;
            height: 150px;
            display: block;
        }

       .gallery figcaption {
            text-align: center;
            margin-top: -20px;
            padding: 0;
            background-color: rgba(255, 255, 255, 0.8);
            position: absolute;
			bottom:0;
            left: 0;
            right: 0;
        }
		.scroll-to-top {
			
			position: fixed;
			bottom: 20px;
			right: 20px;
			width: 50px;
			height: 50px;
			background-color: #333;
			color: #fff;
			text-align: center;
			line-height: 50px;
			font-size: 24px;
			border-radius: 50%;
			cursor: pointer;
		}

		.scroll-to-top.show {
			display: block; /* Show the scroll-to-top arrow when scrolled down */
		}
		/* Horizontal navigation */
		.horizontal-nav ul {
			list-style-type: none;
			margin: 0;
			padding: 15px;
			display: flex;
			text-align: center;
		}

		.horizontal-nav{
			display: flex;
			justify-content: center;
		}
		.horizontal-nav li {
			margin-right: 20px;
		}

		.horizontal-nav a {
			text-decoration: none;
			color: #fff;
			font-weight: bold;
			border: 1px solid transparent;
			padding: 10px 20px;
			border-radius: 20px;
			cursor: pointer;
			transition: background-color 0.3s, border-color 0.3s, color 0.3s;
		}

		.horizontal-nav a:hover {
			background-color: #fff;
			border-color: #fff;
			color: #5084CC;
		}
		.horizontal-nav .dropdown {
			display: none;
			padding-left: 20px;
		}

		.horizontal-nav li:hover .dropdown {
			display: block;
		}

		.horizontal-nav .dropdown li {
			margin-left: 20px;
		}

		/* Vertical navigation */
		.vertical-nav ul {
			list-style-type: none;
			margin: 0;
			padding: 0;
		}

		.vertical-nav li {
			margin-bottom: 10px;
		}
		.vertical-nav a {
			text-decoration: none;
			color: #5084CC;
			font-weight: bold;
			border: 1px solid transparent;
			padding: 5px 20px;
			border-radius: 20px;
			cursor: pointer;
			transition: background-color 0.3s, border-color 0.3s, color 0.3s;
		}
		.vertical-nav a:hover {
			background-color: #5084CC;
			border-color: #5084CC;
			color: #fff;
		}
		.vertical-nav{
			background-color: #fff;
			border-color: #fff;
			color: #5084CC;
		}
		/* Dropdown navigation */
		.dropdown {
			position: absolute;
			background-color: #5084CC;
			border-radius: 10px;
		}

		.dropdown li {
			display: block;
		}

		.dropdown a {
			color: #fff;
			text-decoration: none;
			padding: 10px;
			display: block;
		}

		.dropdown a:hover {
			background-color: #fff;
			color: #5084CC;
		}
  
        </style>
</head>
<nav class="horizontal-nav">
    <ul>
        <li><a href="#home">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#personal">Personal Info</a></li>
        <li><a href="#gallery">Gallery</a>
		    <ul class="dropdown">
				<li><a href="#images" onclick="showCategory('images')">Images</a></li>
				<li><a href="#videos" onclick="showCategory('videos')">Videos</a></li>
				<li><a href="#audio" onclick="showCategory('audio')">Audio</a></li>
            </ul></li>
        <li><a href="#contact">Contacts</a></li>
        <li><a href="#more">More</a></li>
    </ul>
</nav>
		<article id="home">
			<h2>Welcome to My World!</h2>
			<p>Hello there! It's wonderful to have you here on my personal website. This space is all about me, my passions, and the things that make me tick. So, grab a virtual cup of coffee, kick back, and let's dive into my little corner of the internet! First things first, let me introduce myself. I'm Aaron Bryan, a fellow traveler on this journey called life. I'm a curious soul with a knack for all things tech, especially computer engineering. But hey, I'm not just a tech geek; I'm also a big believer in the power of creativity and self-expression. Here on my website, you'll get a glimpse into my world. From my adventures in coding to my experiments with digital art, there's a little something for everyone. Oh, and did I mention my love for anime and manga? Yep, that's right! When I'm not buried in lines of code, you'll probably find me lost in the vibrant worlds of my favorite manga series. But enough about me! This website isn't just about sharing my story; it's about connecting with you. So, feel free to explore, leave a comment, or drop me a message. Let's embark on this journey together and make some meaningful connections along the way!
			Thanks for stopping by, and I hope you enjoy your stay!</p>
		</article>

	<body>
    <main>
		<article id="about">
            <h2>About Me</h2>
            <p>In the serene coastal town of Songculan, Bohol, you'll find me, <dfn>Aaron Bryan B. Rollorata</dfn>,<br> a 19<sup>th</sup>-years-old college student currently enrolled at the University of Bohol, pursuing a degree in <code>Computer Engineering</code>. While I may come across as shy at first, those who know me well understand that I'm actually quite <i>talkative and warm-hearted</i> once we've become close. When I'm not buried in textbooks, you'll often find me immersed in the colorful worlds of manga and anime. These imaginative realms not only provide me with a much-needed escape but also serve as a wellspring of inspiration, fueling my own dreams and aspirations. As I journey through life, I embrace my identity as a dreamer with unwavering determination. <q><em>With a blend of quiet strength, boundless curiosity, and a heart filled with aspirations, I navigate through each day, ready to embrace the challenges and opportunities that come my way.</em></q></p>
            <blockquote class="quote">
                "The only way to do great work is to love what you do." - <cite>Steve Jobs</cite>
            </blockquote>
			<br>
            <pre><b>Feel free to browse through my projects and get in touch!</b></pre>       
        </article>
		<aside> 
				<img src="images/image.jpg"/>
		</aside>
    </main>		

	
	<article id = "personal">
	<h2><caption>Personal information</caption></h2>
    <table>
		<colgroup>
            <col style="width: 100px;">
            <col style="width: 200px;">
        </colgroup>
        <thead>
            <tr>
                <th><mark>All about Myself</mark></th>
            </tr>
        </thead>
        <tbody>
        <tr>
            <td>Name:</td>
            <td>Aaron Bryan Biloy Rollorata</td>
        </tr>
		<tr>
            <td>Birthdate:</td>
            <td>October <sub>25</sub> 2004</td>
        </tr>
        <tr>
            <td>Age:</td>
            <td>19<sup>th</sup> years-old</td>
        </tr>
		<tr>
			<td>Weight:</td>
			<td>62</td>
		</tr>
		<tr>
			<td>Height:</td>
			<td>5'3</td>
		</tr>
        <tr>
            <td>Hobbies:</td>
            <td>
				<ul>
					<li>Reading Manga</li>
					<li>Watching Anime</li>
					<li>Playing Online Games</li>
				</ul>	
			</td>
        </tr>
        <tr>
            <td>Personalities:</td>
            <td>			
				<ul>
					<li>Self-conscious</li>
					<li>Approachable</li>
					<li>Friendly</li>
				</ul>	
			</td>
        </tr>
		<tr>
            <td>Favorites:</td>
            <td>			
				<ul>
					<li>Food: Lechon </li>
					<li>Drink: Iced Coffee</li>
					<li>Color: Black</li>
					<li>Place: Japan</li>
					<li>Animal: Cat</li>
					<li>Sport: Soccer</li>
					<li>Movie: Marvel</li>
					<li>Song: Sparks by Coldplay</li>
					<li>Subject: Programming</li>
					<li>Band: Radwimps</li>
					<li>Number: 14</li>
					<li>Comfort Food: Ice Cream</li>
					<li>Manga: Leviathan</li>
					<li>Anime: Weathering with you</li>
				</ul>	
			</td>
        </tr>
		<tr>
            <td>Schools Attended:</td>
            <td>			
				<ul>
					<li>Kinder: <s>St. Therese School</s> </li>
					<li>Elementary: <s>Special Science Elementary School</s></li>
					<li>HighSchool: <s>Tagbilaran City Science High School</s></li>
					<li>College: <ins>University of Bohol</ins></li>
				</ul>	
			</td>
        </tr>
		<tfoot>
            <tr>
                <td colspan="2"><del>Fill in your personal information above.</del></td>
            </tr>
        </tfoot>
		</tbody>
    </table>
	</article>

	<article id="gallery">		
	<h2>Gallery</h2>
	
<nav class="vertical-nav">
    <ul>
        <li><a href="#images" onclick="showCategory('images')">Images</a></li>
        <li><a href="#videos" onclick="showCategory('videos')">Videos</a></li>
        <li><a href="#audio" onclick="showCategory('audio')">Audio</a></li>
    </ul>
</nav>

	<div class="gallery">
			<!-- Image -->
			<div class="images">
			<figure>
				<img src="image.jpg" alt="Project 1">
				<figcaption>swemmeng pol</figcaption>
			</figure>
			<br>
			<figure>
				<img src="image1.jpg" alt="Project 2">
				<figcaption>new bridge</figcaption>
			</figure>
			<br>
			<figure>
				<img src="image2.jpg" alt="Project 1">
				<figcaption>sadboi</figcaption>
			</figure>
			<br>
			<figure>
				<img src="image3.jpg" alt="Project 2">
				<figcaption>beachboi</figcaption>
			</figure>
			<br>
			<figure>
				<img src="image4.jpg" alt="Project 1">
				<figcaption>dingdong dantes</figcaption>
			</figure>
			<br>
			<figure>
				<img src="image5.jpg" alt="Project 2">
				<figcaption>new bridge v2</figcaption>
			</figure>
			<br>
			<figure>
				<img src="image6.jpg" alt="Project 2">
				<figcaption>w/ black pussy</figcaption>
			</figure>
			</div>

			<!-- Audio -->
			<div class="audio">
			<figure>
				<object data = "C:\Users\user\OneDrive\Documents\aaron college/sparks.mp3">
					<param name="autoplay" value="true"></param>
				</object>	
				<figcaption>Sparks by Coldplay</figcaption>
			</figure>
			</div>

			<!-- Video -->
			<div class="videos">
			<figure>
				<object data = "C:\Users\user\OneDrive\Documents\aaron college/video1.mp4">
					<param name="autoplay" value="true"></param>
				</object>
				<figcaption>Edit2 tahay</figcaption>
			</figure>
			<br>
			<figure>
				<embed src="https://www.youtube.com/embed/Q6iK6DjV_iE"> </embed>
				<figcaption>Weathering with you</figcaption>
			</figure>
			</div>
		</div>
	</article>
	<br>
	<article id="contact">
	<section>
        <h2>Contacts</h2>
        <address>
			<ul>
				<li>Email: <a href="mailto:aaron.rollorata.2004@gmail.com">aaron.rollorata.2004@gmail.com</a></li>
				<li>Phone: 09976757742</li>
				<li>Facebook: Aaron Bryan Biloy Rollorata</li>
				<li>Instagram: @erownnnn</li>
				<li>Titkok: @aaron_po</li>
			</ul>
        </address>
    </section>
	</article>
	    <script>
		
		function showCategory(category) {
			// Hide all categories
			document.querySelectorAll('.gallery > div').forEach(function(categoryDiv) {
				categoryDiv.style.display = 'none';
			});
			// Show the selected category
			document.querySelector('.' + category).style.display = 'block';

			// Scroll to the gallery section
			document.getElementById('gallery').scrollIntoView({ behavior: 'smooth' });
		}

		
		window.onscroll = function() {scrollFunction()};

		function scrollFunction() {
			if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
				document.querySelector('.scroll-to-top').classList.add('show');
			} else {
				document.querySelector('.scroll-to-top').classList.remove('show');
			}
		}

		document.querySelector('.scroll-to-top').addEventListener('click', function() {
			document.body.scrollTop = 0;
			document.documentElement.scrollTop = 0;
		});

    </script>
<br>
	<article id = "more">
	<dl>
		<dt>Title</dt>
		<dd>Prelim Project</dd>
  
		<dt>Author</dt>
		<dd>Aaron Bryan B. Rollorata BS-COMPE 1ST-YR</dd>
  
		<dt>Published Date</dt>
		<dd>2/10/2024</dd>
  
		<dt>Instructor</dt>
		<dd>Ludivina Namocatcat</dd>
	</dl>
	</article>
	<footer>
	&copy; 2024 Aaron Bryan B. Rollorata | <small>All rights reserved</small><br>
	<hr>
	<strong>Thank you for visiting my page!</strong>
	</footer>
	 <a href="#" class="scroll-to-top"><i class="fas fa-arrow-up"></i></a>
</body>
</html>
