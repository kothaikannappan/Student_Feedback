<!DOCTYPE html>
<%@page import="student_feedback.Student_User_Profile"%>
<%@page import="User_Profile.User_Profile"%>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>User Profile</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  
      <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      * {
  box-sizing: border-box;
}

img {
  max-width: 100%;
  display: block;
  margin: auto;
}

.icon {
  display: inline-block;
  width: 1em;
  height: 1em;
  fill: currentColor;
}

body {
  font-family: 'Open Sans', sans-serif;
  background: #fff;
  font-size: 16px;
}

.pen-wrapper {
  display: flex;
  width: 100%;
  height: calc(100vh - 160px);
  min-height: 500px;
  justify-content: center;
  align-items: center;
}
@media screen and (max-height: 800px) {
  .pen-wrapper {
    padding-top: 40px;
    align-items: flex-start;
  }
}

.pen-title {
  text-align: center;
  font-size: 20px;
  line-height: 40px;
  padding: 20px 0;
}

.nav {
  position: relative;
  width: 150px;
  height: 150px;
}

.nav__inner {
  position: absolute;
  top: 0;
  left: 0;
  width: 150px;
  height: 150px;
  padding: 15px;
  border-radius: 75px;
  overflow: hidden;
  background: #fff;
  box-shadow: inset 0px 0px 12px rgba(0, 0, 0, 0.15);
  transition: height .3s ease-in;
}
input:checked + .menu-button + .nav__inner {
  height: 400px;
}

.nav__avatar {
  position: relative;
  overflow: hidden;
}
.nav__avatar, .nav__avatar img {
  border-radius: 50%;
}

.menu-button__input {
  display: none;
}

.menu-button {
  position: absolute;
  right: 0;
  top: 0;
  z-index: 2;
  display: block;
  width: 50px;
  height: 50px;
  border-radius: 50%;
  box-shadow: inset 0px 0px 11px 0px white;
  background: linear-gradient(#ff4184 0%, #ff005a 100%, #ff005a 100%);
  transform: scale(0.1);
  opacity: 0;
  transition: transform .3s ease-in, opacity .3s ease-in;
  cursor: pointer;
}
.touch .menu-button, .nav:hover .menu-button, input:checked + .menu-button {
  transform: scale(1);
  opacity: 1;
}

.menu-button__icon {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 25px;
  height: 20px;
  transform: translate3d(-50%, -50%, 0);
}

.menu-button__icon-strip {
  top: 50%;
  margin-top: -2px;
}
.menu-button__icon-strip, .menu-button__icon-strip:before, .menu-button__icon-strip:after {
  position: absolute;
  left: 0;
  display: block;
  width: 100%;
  height: 4px;
  border-radius: 4px;
  background-color: #fff;
  transition: transform .3s ease, top .3s ease, bottom .3s ease, opacity .3s ease;
}
.menu-button__icon-strip:before, .menu-button__icon-strip:after {
  content: '';
  transform-origin: center;
}
.menu-button__icon-strip:before {
  top: -7px;
  margin-top: -2px;
}
.menu-button__icon-strip:after {
  bottom: -7px;
  margin-bottom: -2px;
}
input:checked + .menu-button .menu-button__icon-strip {
  background-color: rgba(255, 255, 255, 0);
}
input:checked + .menu-button .menu-button__icon-strip:before {
  top: 50%;
  transform: rotate(45deg);
}
input:checked + .menu-button .menu-button__icon-strip:after {
  bottom: 50%;
  transform: rotate(-45deg);
}

.nav-list {
  width: 30px;
  margin: auto;
  margin-bottom: 20px;
}

.nav-list__item {
  margin-top: 20px;
  opacity: 0;
  text-align: center;
  transition: opacity .3s ease-in;
}
input:checked + .menu-button + .nav__inner .nav-list__item {
  opacity: 1;
}
input:checked + .menu-button + .nav__inner .nav-list__item:nth-child(1) {
  transition-delay: 0.1s;
}
input:checked + .menu-button + .nav__inner .nav-list__item:nth-child(2) {
  transition-delay: 0.2s;
}
input:checked + .menu-button + .nav__inner .nav-list__item:nth-child(3) {
  transition-delay: 0.3s;
}
input:checked + .menu-button + .nav__inner .nav-list__item:nth-child(4) {
  transition-delay: 0.4s;
}

.nav-list__url {
  color: #6d6e76;
  transition: color .3s ease;
}
.nav-list__url:hover {
  color: #ff0b61;
}

.nav-list__icon {
  font-size: 30px;
}

    </style>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>
<%
if (session.getAttribute("Name")!=null)
{
	
	String id=session.getAttribute("Name").toString();
	User_Profile usr=new User_Profile();
	Student_User_Profile studentDetails=new Student_User_Profile();
	usr=studentDetails.getDetails(id);
	String nameDisplay;
	nameDisplay=usr.getLastName()+","+usr.getFirstName();
%>
<body>
<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
  <h1 class="pen-title"><%=nameDisplay%></h1>

<div class="pen-wrapper">
  <div class="pen-wrapper__inner">
    <nav class="nav">
      
      <input type="checkbox" id="menu-button"  class="menu-button__input" />
      <label for="menu-button" class="menu-button">
        <span class="menu-button__icon">
          <span class="menu-button__icon-strip"></span>
        </span>
      </label>
      
      <div class="nav__inner">
        <figure class="nav__avatar">
          <img src="http://www.foolproof.co.uk/media/466535/Luke-Burroughs.jpg" alt="" />
        </figure>
        <ul class="nav-list">
          <li class="nav-list__item">
            <a href="feedback.html" class="nav-list__url">
              <svg class="icon nav-list__icon"><use xlink:href="#icon-star"></use></svg>
            </a>
          </li>
          <li class="nav-list__item">
            <a href="#" class="nav-list__url">
              <svg class="icon nav-list__icon"><use xlink:href="#icon-envelope"></use></svg>
            </a>
          </li>
          <li class="nav-list__item">
            <a href="#" class="nav-list__url">
              <svg class="icon nav-list__icon"><use xlink:href="#icon-cog"></use></svg>
            </a>
          </li>
          <li class="nav-list__item">
            <a href="Logout.jsp" class="nav-list__url">
              <svg class="icon nav-list__icon"><use xlink:href="#icon-user"></use></svg>
            </a>
          </li>
        </ul>
      </div>
      
    </nav>
  </div>
</div>



<svg style="position: absolute; width: 0; height: 0;" width="0" height="0" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
  <defs>
    <symbol id="icon-star" viewBox="0 0 951 1024">
      <title>star</title>
      <path class="path1" d="M950.857 369.714q0 12.571-14.857 27.429l-207.429 202.286 49.143 285.714q0.571 4 0.571 11.429 0 12-6 20.286t-17.429 8.286q-10.857 0-22.857-6.857l-256.571-134.857-256.571 134.857q-12.571 6.857-22.857 6.857-12 0-18-8.286t-6-20.286q0-3.429 1.143-11.429l49.143-285.714-208-202.286q-14.286-15.429-14.286-27.429 0-21.143 32-26.286l286.857-41.714 128.571-260q10.857-23.429 28-23.429t28 23.429l128.571 260 286.857 41.714q32 5.143 32 26.286z"></path>
    </symbol>
    <symbol id="icon-envelope" viewBox="0 0 1024 1024">
      <title>envelope</title>
      <path class="path1" d="M512.48 603.552l-130.304-106.976-283.584 334.816h828.032l-283.616-338.144-130.528 110.304zM957.632 192.608h-890.080l445.056 374.336 445.024-374.336zM662.56 476.384l297.312 354.688v-606.464l-297.312 251.776zM64.128 224.608v606.464l297.312-354.688-297.312-251.776z"></path>
    </symbol>
    <symbol id="icon-cog" viewBox="0 0 1024 1024">
      <title>cog</title>
      <path class="path1" d="M863.68 595.68c68.992 51.424 128.128 98.496 128.128 98.496l-84.192 147.648-152.16-67.168-140.992 82.464c-9.536 86.944-18.272 166.88-18.272 166.88h-168.384l-18.688-167.392-138.944-82.656-153.824 67.904-84.16-147.648c0 0 58.144-46.848 126.976-98.112v-168.288l-126.976-97.92 84.16-147.68 150.144 66.816 149.056-80.864 12.256-168.16h168.384l12.192 167.456 147.008 82.496 152.256-67.776 84.192 147.68-128.128 98.272v167.552zM512 384c-70.688 0-128 57.312-128 128s57.312 128 128 128 128-57.312 128-128-57.312-128-128-128z"></path>
    </symbol>
    <symbol id="icon-user" viewBox="0 0 1024 1024">
      <title>user</title>
      <path class="path1" d="M0 1024v-96c0-143.488 180.768-197.728 419.168-219.584-52.352-32.448-93.44-123.648-114.848-196.48-0.096 0-0.192 0.064-0.32 0.064-2.176 0-48-57.312-48-128 0-62.016-4.416-113.728 32.224-125.44-0.032-0.864-0.224-1.696-0.224-2.56 0-78.624 40.672-147.52 101.984-187.488 15.84-39.52 64.128-68.512 122.016-68.512s106.176 28.992 122.016 68.512c61.312 39.968 101.984 108.864 101.984 187.488 0 0.864-0.192 1.696-0.224 2.56 36.64 11.712 32.224 63.424 32.224 125.44 0 70.688-50.816 128-48 128-0.128 0-0.224-0.064-0.32-0.064-21.408 72.8-62.496 164.032-114.848 196.48 238.4 21.856 419.168 74.080 419.168 219.584v96h-1024z"></path>
    </symbol>
  </defs>
</svg>
  
  

    <script  src="js/index.js"></script>



</div>
</body>
<%
session.setAttribute("Name",usr.getUserID());
} 
else
{
	String redirectLogin = "index.jsp";
	response.sendRedirect(redirectLogin);
}%>
</html>
