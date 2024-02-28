//window.alert("hi");

/* text.js */
// span 요소 노드 가져오기
const spanEl = document.querySelector("main h2 span");
// 화면에 표시할 문장 배열
const txtArr = ['Web Publisher', 'Front-End Developer', 'Web UI Designer', 'UX Designer', 'Back-End Developer'];
// 배열의 인덱스 초깃값
let index = 0;
// 화면에 표시할 문장 배열에서 텍스트를 하나 가져온 뒤, 배열로 만들기
let currentTxt = txtArr[index].split("");

function writeTxt(){ // ①
  spanEl.textContent =  spanEl.textContent + currentTxt.shift(); 
  if(currentTxt.length !== 0){ // ②
     setTimeout(writeTxt, Math.floor(Math.random() * 100));
  }else{ // ③
    currentTxt = spanEl.textContent.split("");
    setTimeout(deleteTxt, 3000);
  }
}

function deleteTxt(){
  currentTxt.pop(); // ①
  spanEl.textContent = currentTxt.join(""); // ②
  if(currentTxt.length !== 0){ // ③
    setTimeout(deleteTxt, Math.floor(Math.random() * 100))
  }else{ // ④
    index = (index + 1) % txtArr.length;
    currentTxt = txtArr[index].split("");
    writeTxt();
  }
}

writeTxt();


const headerEl = document.querySelector("header");

window.addEventListener('scroll', function(){
  requestAnimationFrame(scrollCheck);
});


function scrollCheck(){
  let browerScrollY = window.scrollY ? window.scrollY : window.pageYOffset;
  if(browerScrollY > 0){
    headerEl.classList.add("active");
  }else{
    headerEl.classList.remove("active");
  }

}





function aniationMove(selector) {
  const targetEl=document.querySelector(selector);
  console.log("타겟", targetEl);
  //console.log(typeof(targetEl));
  const browserScrollY = window.pageYOffset;
  //console.log("y축",browserScrollY);
  //console.log(targetEl.getBoundingClientRect());
  const targetScorllY = targetEl.getBoundingClientRect().top + browserScrollY;
  //console.log(targetScorllY);
  window.scrollTo({ top: targetScorllY, behavior: 'auto' });
} 


const scollMoveEl = document.querySelectorAll("[data-animation-scroll='true']"); 
for(let i = 0; i < scollMoveEl.length; i++){
  scollMoveEl[i].addEventListener("click", function () {
       //console.log(this);
       console.log(this.dataset);
       //console.log(this.dataset.target);
       const target=this.dataset.target;
       aniationMove(target);
  });
}