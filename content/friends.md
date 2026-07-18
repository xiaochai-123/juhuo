---
title: "友情链接"
date: 2025-11-24
markup: "html"
---

<style>
.friend-cards, .org-cards { 
  display: flex; flex-wrap: wrap; gap: 1rem; justify-content: flex-start;
  overflow: visible;
}
.friend-card, .org-card {
  position: relative;
  border-radius: 22px;
  border: 2px solid rgba(255,255,255,0.18);
  width: 230px;
  padding: 1.2rem;
  box-shadow: 0 8px 40px rgba(175,66,97,0.18);
  backdrop-filter: blur(10px) saturate(170%);
  -webkit-backdrop-filter: blur(10px) saturate(170%);
  overflow: hidden; 
  transition: transform .2s, z-index .2s;
  display: flex;
  flex-direction: column;
  align-items: center;
  z-index: 1;
}
/* 星点背景，也同步到 .org-card */
.friend-card::before, .org-card::before {
  content: '';
  position: absolute;
  top: -20%;
  left: -20%;
  width: 140%;
  height: 140%;
  z-index: 0;
  pointer-events: none;
  background:
    radial-gradient(circle, #ffe3b0 0.8px, transparent 2px) 12% 22%/ 110px 80px,
    radial-gradient(circle, #aae2ff 1.1px, transparent 2px) 72% 32%/ 150px 75px,
    radial-gradient(circle, #8e71bf 0.7px, transparent 2px) 42% 77%/ 90px 60px,
    radial-gradient(circle, #fff 1.3px, transparent 2px) 87% 51%/ 130px 120px,
    radial-gradient(circle, #fcb3d1 1px, transparent 2px) 33% 64%/ 120px 88px,
    radial-gradient(circle, #ffeeb3 1px, transparent 2px) 62% 78%/ 120px 100px;
  background-repeat: repeat;
  animation: stars-rotate 22s linear infinite;
  border-radius: 50%;
  opacity: 0.32;
}
@keyframes stars-rotate {
  0% { transform: rotate(0deg) scale(1);}
  100% { transform: rotate(360deg) scale(1.04);}
}
/* 包装内容，互不遮挡 */
.friend-card > *, .org-card > * { 
  position: relative; 
  z-index: 2;
}
/* 悬停效果一致 */
.friend-card:hover, .org-card:hover {
  transform: scale(1.05) rotate(-1deg);
  box-shadow: 0 16px 50px 6px rgba(175,66,160,0.25);
  border: 2.5px solid rgba(255,255,255,0.38);
  z-index: 999;
}
/* 头像样式一致 */
.friend-card img, .org-card img { 
  width: 72px; height: 72px; border-radius: 50%;
  object-fit: cover;
  margin-bottom: 0.7rem; 
  border: 2px solid #fff;
  box-shadow: 0 4px 16px #af426178;
  z-index:3;
}
/* 链接样式一致 */
.friend-card a, .org-card a { 
  font-weight: bold; color: #fff; text-decoration: none;
  font-size: 1.08em; z-index:3;
  text-shadow: 0 2px 14px rgba(175,66,160,0.16);
}
/* 描述样式一致 */
.friend-desc, .org-desc { 
  color: #fffbe5; font-size: 1em; text-align: center;
  text-shadow: 0 2px 6px #af426166;
  z-index:3;
}
</style>
<!-- 友链窗口 -->

<section>
  <h2>成员</h2>
  <div class="friend-cards">

	<div class="friend-card">
	  <img src="https://decimo.top/images/my-avatar.jpg" alt="拐">
	  <span>拐</span>
	</div>
    
    <!-- 继续添加你的朋友们的卡片即可 -->
  </div>
</section>

<!-- 组织窗口 -->
<section>
  <h2>组织</h2>
  <div class="org-cards">

    <div class="org-card">
      <a href="https://juhuo.pages.dev" target="_blank">
        <img src="/images/logo.png" alt="juhuo">
      </a>
      <a href="https://juhuo.pages.dev" target="_blank">炬火社</a>
    </div>
	
    <!-- 继续添加你的组织卡片即可 -->
  </div>
</section>