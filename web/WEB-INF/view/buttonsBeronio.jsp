<%-- 
    Document   : buttonslanoy
    Created on : Mar 27, 2024, 3:52:24 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>BERONIO</title>
  <style>

.fnc-slider {
  overflow: hidden;
  box-sizing: border-box;
  position: relative;
  height: 100vh;
}

.fnc-slider__slides {
  position: relative;
  height: 100%;
  transition: transform 1s 0.6666666666666666s;
}

.m--blend-dark .fnc-slide__inner {
  background-color: #373737;
}

.m--blend-dark .fnc-slide__mask-inner {
  background-color: #373737;
}

.m--navbg-dark {
  background-color: #373737;
}

.m--blend-green .fnc-slide__inner {
  background-color: #537371;
}

.m--blend-green .fnc-slide__mask-inner {
  background-color: #42605e;
}

.m--navbg-green {
  background-color: #42605e;
}

.m--blend-red .fnc-slide__inner {
  background-color: #7a0a0f;
}

.m--blend-red .fnc-slide__mask-inner {
  background-color: #6a0a0d;
}

.m--navbg-red {
  background-color: #6a0a0d;
}

.m--blend-blue .fnc-slide__inner {
  background-color: #457a96;
}

.m--blend-blue .fnc-slide__mask-inner {
  background-color: #2d7791;
}

.m--navbg-blue {
  background-color: #2d7791;
}

.fnc-slide {
  overflow: hidden;
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  transform: translate3d(0, 0, 0);
}

.m--before-sliding {
  z-index: 2 !important;
  transform: translate3d(100%, 0, 0);
}

.m--active-slide {
  z-index: 1;
  transition: transform 1s 0.6666666666666666s ease-in-out;
  transform: translate3d(0, 0, 0);
}

.fnc-slide__inner {
  position: relative;
  height: 100%;
  background-size: cover;
  background-position: center top;
  transform: translate3d(0, 0, 0);
}

.m--global-blending-active .fnc-slide__inner,
.m--blend-bg-active .fnc-slide__inner {
  background-blend-mode: luminosity;
}

.m--before-sliding .fnc-slide__inner {
  transform: translate3d(-100%, 0, 0);
}

.m--active-slide .fnc-slide__inner {
  transition: transform 1s 0.6666666666666666s ease-in-out;
  transform: translate3d(0, 0, 0);
}

.fnc-slide__mask {
  overflow: hidden;
  z-index: 1;
  position: absolute;
  right: calc(60% - 40%);
  top: 15%;
  width: 50.25vh;
  height: 44.95vh;
  margin-right: -90px;
  clip-path: polygon(0 0, 100% 0, 100% 100%, 0 100%, 0 0, 6vh 0, 6vh 27.95vh, 44vh 27.95vh, 44vh 6vh, 6vh 6vh);
  transform-origin: 50% 0;
  transition-timing-function: ease-in-out;
}

.m--before-sliding .fnc-slide__mask {
  transform: rotate(-10deg) translate3d(200px, 0, 0);
  opacity: 0;
}

.m--active-slide .fnc-slide__mask {
  transition: transform 0.7s 1.6666666666666667s, opacity 0.35s 1.6666666666666667s;
  transform: translate3d(0, 0, 0);
  opacity: 1;
}

.m--previous-slide .fnc-slide__mask {
  transition: transform 0.7s 0.6666666666666666s, opacity 0.35s 1s;
  transform: rotate(10deg) translate3d(-200px, 0, 0);
  opacity: 0;
}

.fnc-slide__mask-inner {
  z-index: -1;
  position: absolute;
  left: 50%;
  top: 50%;
  width: 100vw;
  height: 100vh;
  margin-left: -50vw;
  margin-top: -50vh;
  background-size: cover;
  background-position: center center;
  background-blend-mode: luminosity;
  transform-origin: 50% 20.975vh;
  transition-timing-function: ease-in-out;
}

.m--before-sliding .fnc-slide__mask-inner {
  transform: translateY(0) rotate(-10deg) translateX(-200px) translateZ(0);
}

.m--active-slide .fnc-slide__mask-inner {
  transition: transform 0.7s 1.6666666666666667s;
  transform: translateX(0);
}

.m--previous-slide .fnc-slide__mask-inner {
  transition: transform 0.7s 0.6666666666666666s;
  transform: translateY(0) rotate(10deg) translateX(200px) translateZ(0);
}

.fnc-slide__content {
  z-index: 2;
  position: absolute;
  left: 40%;
  top: 40%;
}

.fnc-slide__heading {
  margin-bottom: 10px;
  text-transform: uppercase;
}

.m--before-sliding .fnc-slide__heading-line {
  transform: translateY(100%);
}

.m--active-slide .fnc-slide__heading-line {
  transition: transform 1.5s 1.6666666666666667s;
  transform: translateY(0);
}

.m--previous-slide .fnc-slide__heading-line {
  transition: transform 1.5s;
  transform: translateY(-100%);
}

.fnc-slide__action-btn {
  position: relative;
  margin-left: 200px;
  padding: 5px 15px;
  font-size: 20px;
  line-height: 1;
  color: transparent;
  border: none;
  text-transform: uppercase;
  background: transparent;
  cursor: pointer;
  text-align: center;
  outline: none;
}

.fnc-slide__action-btn span {
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  perspective: 1000px;
  transform-style: preserve-3d;
  transition: transform 0.3s;
  transform-origin: 50% 0;
  line-height: 30px;
  color: #fff;
}

.fnc-slide__action-btn span:before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  border: 2px solid #fff;
  border-top: none;
  border-bottom: none;
}

.fnc-slide__action-btn span:after {
  content: attr(data-text);
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  line-height: 30px;
  background: #1f2833;
  opacity: 0;
  transform-origin: 50% 0;
  transform: translateY(100%) rotateX(-90deg);
  transition: opacity 0.15s 0.15s;
}

.fnc-slide__action-btn:hover span {
  transform: rotateX(90deg);
}

.fnc-slider__nav {
  z-index: 5;
  position: absolute;
  right: 0;
  bottom: 0;
}

.fnc-slider__nav-bgs {
  z-index: -1;
  overflow: hidden;
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
}

.fnc-slider__nav-bg {
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
}

.m--nav-bg-before.fnc-slider__nav-bg {
  z-index: 2 !important;
  transform: translateX(100%);
}

.m--active-nav-bg.fnc-slider__nav-bg {
  z-index: 1;
  transition: transform 1s 0.6666666666666666s;
  transform: translateX(0);
}

.fnc-slider__nav-controls {
  font-size: 0;
}

.fnc-slider__nav-control {
  overflow: hidden;
  position: relative;
  display: inline-block;
  vertical-align: top;
  width: 100px;
  height: 50px;
  font-size: 14px;
  color: #fff;
  text-transform: uppercase;
  background: transparent;
  border: none;
  outline: none;
  cursor: pointer;
  transition: background-color 0.5s;
}

.m--active-control.fnc-slider__nav-control {
  background: #1f2833;
}

.fnc-slider__nav-control-progress {
  position: absolute;
  left: 0;
  bottom: 0;
  width: 100%;
  height: 2px;
  background: #fff;
  transform-origin: 0 50%;
  transform: scaleX(0);
  transition-timing-function: linear !important;
}

.m--with-autosliding .m--active-control .fnc-slider__nav-control-progress {
  transform: scaleX(1);
}

.m--prev-control .fnc-slider__nav-control-progress {
  transform: translateX(100%);
  transition: transform 0.5s !important;
}

.m--reset-progress .fnc-slider__nav-control-progress {
  transform: scaleX(0);
  transition: transform 0s 0s !important;
}

.m--autosliding-blocked .fnc-slider__nav-control-progress {
  transition: all 0s 0s !important;
  transform: scaleX(0) !important;
}

/* Additional styles */

body {
  margin: 0;
}

.demo-cont {
  overflow: hidden;
  position: relative;
  height: 100vh;
  perspective: 1500px;
  background: #000;
}

.demo-cont__credits {
  box-sizing: border-box;
  overflow-y: auto;
  z-index: 1;
  position: absolute;
  right: 0;
  top: 0;
  width: 400px;
  height: 100%;
  padding: 20px 10px 30px;
  background: #303030;
  font-family: 'Open Sans', Helvetica, Arial, sans-serif;
  color: #fff;
  text-align: center;
  transition: transform 0.7s;
  transform: translate3d(100%, 0, 0) rotateY(-45deg);
  will-change: transform;
}

.credits-active .demo-cont__credits {
  transition: transform 0.7s 0.23333333333333334s;
  transform: translate3d(0, 0, 0);
}

.demo-cont__credits-close {
  position: absolute;
  right: 20px;
  top: 20px;
  width: 28px;
  height: 28px;
  cursor: pointer;
}

.demo-cont__credits-close:before,
.demo-cont__credits-close:after {
  content: "";
  position: absolute;
  left: 0;
  top: 50%;
  width: 100%;
  height: 2px;
  margin-top: -1px;
  background: #fff;
}

.demo-cont__credits-close:before {
  transform: rotate(45deg);
}

.demo-cont__credits-close:after {
  transform: rotate(-45deg);
}

.demo-cont__credits-heading {
  text-transform: uppercase;
  font-size: 40px;
  margin-bottom: 20px;
}

.demo-cont__credits-img {
  display: block;
  width: 60%;
  margin: 0 auto 30px;
  border-radius: 10px;
}

.demo-cont__credits-name {
  margin-bottom: 20px;
  font-size: 30px;
}

.demo-cont__credits-link {
  display: block;
  margin-bottom: 10px;
  font-size: 24px;
  color: #fff;
}

.demo-cont__credits-blend {
  font-size: 30px;
  margin-bottom: 10px;
}

.example-slider {
  z-index: 2;
  transform: translate3d(0, 0, 0);
  transition: transform 0.7s;
}

.credits-active .example-slider {
  transform: translate3d(-400px, 0, 0) rotateY(10deg) scale(0.9);
}

.fnc-slide-1 .fnc-slide__inner,
.fnc-slide-1 .fnc-slide__mask-inner {
  background-image: url('https://scontent.xx.fbcdn.net/v/t1.15752-9/434809758_1463287014584022_8154888105761718492_n.jpg?stp=dst-jpg_p206x206&_nc_cat=106&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFaq485gyeUpsECitbTXo1wHxE6MLZ-C4AfETowtn4LgCjlryz2S1LswKM_ja-HrL6AzhIbYq8_Ua_KwHYnDgu-&_nc_ohc=Jd0PaLfulvgAb5y3RDl&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdVUwW4AVh0rl8H0FKGaZv6kZm_oi0BcMRonQMFDZE6d5w&oe=663C3595');
}

.fnc-slide-2 .fnc-slide__inner,
.fnc-slide-2 .fnc-slide__mask-inner {
  background-image: url('https://www.datocms-assets.com/48294/1691046464-crud-operations-1-crud-operations.png?auto=format');
}

.fnc-slide-3 .fnc-slide__inner,
.fnc-slide-3 .fnc-slide__mask-inner {
  background-image: url('https://prezlab.com/wp-content/uploads/2022/11/gifgif.gif');
}

.fnc-slide-3 .fnc-slide__inner:before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background: rgba(255, 255, 255, 0.1);
}

.fnc-slide-4 .fnc-slide__inner,
.fnc-slide-4 .fnc-slide__mask-inner {
  background-image: url('https://media.tenor.com/uUtkQ30prJUAAAAC/date-music.gif');
}

.fnc-slide-4 .fnc-slide__inner:before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.2);
}

  </style>
</head>

<body>
  <!-- 
Please note, that you can apply .m--global-blending-active to .fnc-slider 
to enable blend-mode for all background-images or apply .m--blend-bg-active
to some specific slides (.fnc-slide). It's disabled by default in this demo,
because it requires specific images, where more than 50% of bg is transparent or monotone
-->
<div class="demo-cont">
  <!-- slider start -->
  <div class="fnc-slider example-slider">
    <div class="fnc-slider__slides">
      <!-- slide start -->
      <div class="fnc-slide m--blend-green m--active-slide">
        <div class="fnc-slide__inner">
          <div class="fnc-slide__mask">
            <div class="fnc-slide__mask-inner"></div>
          </div>
          <div class="fnc-slide__content">
            <h1 class="fnc-slide__heading">
              <div class="fnc-slide__heading-line">
                <span>ABOUT</span>
              </div>
              <div class="fnc-slide__heading-line">
                <span>ME</span>
              </div>
            </h1>
            <button type="button" class="fnc-slide__action-btn">
              INFORMATION
              <span data-text="Credits">INFORMATION</span>
            </button>
          </div>
        </div>
      </div>
      <!-- slide end -->
      <!-- slide start -->
      <div class="fnc-slide m--blend-blue">
        <div class="fnc-slide__inner">
          <div class="fnc-slide__mask">
            <div class="fnc-slide__mask-inner"></div>
          </div>
          <div class="fnc-slide__content">
            <h1 class="fnc-slide__heading">
              <div class="fnc-slide__heading-line">
                <span>CRUD</span>
              </div>
              <div class="fnc-slide__heading-line">
                <span>APPLICATION</span>
              </div>
            </h1>
            <button type="button" class="fnc-slide__action-btn">
              INFORMATION
              <span data-text="Credits">INFORMATION</span>
            </button>
          </div>
        </div>
      </div>
      <!-- slide end -->
    </div>
    <nav class="fnc-nav">
      <div class="fnc-nav__bgs">
        <div class="fnc-nav__bg m--navbg-green m--active-nav-bg"></div>
        <div class="fnc-nav__bg m--navbg-dark"></div>
        <div class="fnc-nav__bg m--navbg-red"></div>
        <div class="fnc-nav__bg m--navbg-blue"></div>
      </div>
      <div class="fnc-nav__controls">
        <button class="fnc-nav__control">
          About Me
          <span class="fnc-nav__control-progress"></span>
        </button>
        <button class="fnc-nav__control">
          CRUD Application
          <span class="fnc-nav__control-progress"></span>
        </button>
      </div>
    </nav>
  </div>
  <!-- slider end -->
  <div class="demo-cont__credits">
    <div class="demo-cont__credits-close"></div>
    <h2 class="demo-cont__credits-heading">PROGRAMS BY</h2>
    <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/142996/profile/profile-512_5.jpg" alt="" class="demo-cont__credits-img" />
    <h3 class="demo-cont__credits-name">Jean Beronio</h3>
    <a href="https://jeanmaeb.github.io/Aboutme-portfolio/" target="_blank" class="demo-cont__credits-link">
        ABOUT ME</a>
    <a href="/button1Beronio" target="_blank" class="demo-cont__credits-link">
        CRUD APPLICATION</a>
    <h4 class="demo-cont__credits-blend">Black & White</h4>
    <div class="colorful-switch">
      <input type="checkbox" class="colorful-switch__checkbox js-activate-global-blending" id="colorful-switch-cb" />
      <label class="colorful-switch__label" for="colorful-switch-cb">
        <span class="colorful-switch__bg"></span>
        <span class="colorful-switch__dot"></span>
        <span class="colorful-switch__on">
          <span class="colorful-switch__on__inner"></span>
        </span>
        <span class="colorful-switch__off"></span>
      </label>
    </div>
    <a href="/choose" class="demo-cont__credits-link">
        <h5 class="demo-cont__credits-blend">LOG-OUT</h5>
    </a>
  </div>
</div>

  <script>
    (function() {

  var $$ = function(selector, context) {
    var context = context || document;
    var elements = context.querySelectorAll(selector);
    return [].slice.call(elements);
  };

  function _fncSliderInit($slider, options) {
    var prefix = ".fnc-";

    var $slider = $slider;
    var $slidesCont = $slider.querySelector(prefix + "slider__slides");
    var $slides = $$(prefix + "slide", $slider);
    var $controls = $$(prefix + "nav__control", $slider);
    var $controlsBgs = $$(prefix + "nav__bg", $slider);
    var $progressAS = $$(prefix + "nav__control-progress", $slider);

    var numOfSlides = $slides.length;
    var curSlide = 1;
    var sliding = false;
    var slidingAT = +parseFloat(getComputedStyle($slidesCont)["transition-duration"]) * 1000;
    var slidingDelay = +parseFloat(getComputedStyle($slidesCont)["transition-delay"]) * 1000;

    var autoSlidingActive = false;
    var autoSlidingTO;
    var autoSlidingDelay = 5000; // default autosliding delay value
    var autoSlidingBlocked = false;

    var $activeSlide;
    var $activeControlsBg;
    var $prevControl;

    function setIDs() {
      $slides.forEach(function($slide, index) {
        $slide.classList.add("fnc-slide-" + (index + 1));
      });

      $controls.forEach(function($control, index) {
        $control.setAttribute("data-slide", index + 1);
        $control.classList.add("fnc-nav__control-" + (index + 1));
      });

      $controlsBgs.forEach(function($bg, index) {
        $bg.classList.add("fnc-nav__bg-" + (index + 1));
      });
    };

    setIDs();

    function afterSlidingHandler() {
      $slider.querySelector(".m--previous-slide").classList.remove("m--active-slide", "m--previous-slide");
      $slider.querySelector(".m--previous-nav-bg").classList.remove("m--active-nav-bg", "m--previous-nav-bg");

      $activeSlide.classList.remove("m--before-sliding");
      $activeControlsBg.classList.remove("m--nav-bg-before");
      $prevControl.classList.remove("m--prev-control");
      $prevControl.classList.add("m--reset-progress");
      var triggerLayout = $prevControl.offsetTop;
      $prevControl.classList.remove("m--reset-progress");

      sliding = false;
      var layoutTrigger = $slider.offsetTop;

      if (autoSlidingActive && !autoSlidingBlocked) {
        setAutoslidingTO();
      }
    };

    function performSliding(slideID) {
      if (sliding) return;
      sliding = true;
      window.clearTimeout(autoSlidingTO);
      curSlide = slideID;

      $prevControl = $slider.querySelector(".m--active-control");
      $prevControl.classList.remove("m--active-control");
      $prevControl.classList.add("m--prev-control");
      $slider.querySelector(prefix + "nav__control-" + slideID).classList.add("m--active-control");

      $activeSlide = $slider.querySelector(prefix + "slide-" + slideID);
      $activeControlsBg = $slider.querySelector(prefix + "nav__bg-" + slideID);

      $slider.querySelector(".m--active-slide").classList.add("m--previous-slide");
      $slider.querySelector(".m--active-nav-bg").classList.add("m--previous-nav-bg");

      $activeSlide.classList.add("m--before-sliding");
      $activeControlsBg.classList.add("m--nav-bg-before");

      var layoutTrigger = $activeSlide.offsetTop;

      $activeSlide.classList.add("m--active-slide");
      $activeControlsBg.classList.add("m--active-nav-bg");

      setTimeout(afterSlidingHandler, slidingAT + slidingDelay);
    };



    function controlClickHandler() {
      if (sliding) return;
      if (this.classList.contains("m--active-control")) return;
      if (options.blockASafterClick) {
        autoSlidingBlocked = true;
        $slider.classList.add("m--autosliding-blocked");
      }

      var slideID = +this.getAttribute("data-slide");

      performSliding(slideID);
    };

    $controls.forEach(function($control) {
      $control.addEventListener("click", controlClickHandler);
    });

    function setAutoslidingTO() {
      window.clearTimeout(autoSlidingTO);
      var delay = +options.autoSlidingDelay || autoSlidingDelay;
      curSlide++;
      if (curSlide > numOfSlides) curSlide = 1;

      autoSlidingTO = setTimeout(function() {
        performSliding(curSlide);
      }, delay);
    };

    if (options.autoSliding || +options.autoSlidingDelay > 0) {
      if (options.autoSliding === false) return;
      
      autoSlidingActive = true;
      setAutoslidingTO();
      
      $slider.classList.add("m--with-autosliding");
      var triggerLayout = $slider.offsetTop;
      
      var delay = +options.autoSlidingDelay || autoSlidingDelay;
      delay += slidingDelay + slidingAT;
      
      $progressAS.forEach(function($progress) {
        $progress.style.transition = "transform " + (delay / 1000) + "s";
      });
    }
    
    $slider.querySelector(".fnc-nav__control:first-child").classList.add("m--active-control");

  };

  var fncSlider = function(sliderSelector, options) {
    var $sliders = $$(sliderSelector);

    $sliders.forEach(function($slider) {
      _fncSliderInit($slider, options);
    });
  };

  window.fncSlider = fncSlider;
}());

/* not part of the slider scripts */

/* Slider initialization
options:
autoSliding - boolean
autoSlidingDelay - delay in ms. If audoSliding is on and no value provided, default value is 5000
blockASafterClick - boolean. If user clicked any sliding control, autosliding won't start again
*/
fncSlider(".example-slider", {autoSlidingDelay: 4000});

var $demoCont = document.querySelector(".demo-cont");

[].slice.call(document.querySelectorAll(".fnc-slide__action-btn")).forEach(function($btn) {
  $btn.addEventListener("click", function() {
    $demoCont.classList.toggle("credits-active");
  });
});

document.querySelector(".demo-cont__credits-close").addEventListener("click", function() {
  $demoCont.classList.remove("credits-active");
});

document.querySelector(".js-activate-global-blending").addEventListener("click", function() {
  document.querySelector(".example-slider").classList.toggle("m--global-blending-active");
});
  </script>
</body>

</html>