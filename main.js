codeFetch('Oats/Quake3.asm').then((result) => {
  document.getElementById('asm').innerHTML = result
});

codeFetch('Oats/Quake3.sh').then((result) => {
  document.getElementById('bash').innerHTML = result
});

codeFetch('Oats/Quake3.c').then((result) => {
  document.getElementById('cpp').innerHTML = result
});

codeFetch('Oats/Quake3.cs').then((result) => {
  document.getElementById('cs').innerHTML = result
});

codeFetch('Oats/Quake3.dart').then((result) => {
  document.getElementById('dart').innerHTML = result
});

codeFetch('Oats/Quake3.f95').then((result) => {
  document.getElementById('fort').innerHTML = result
});

codeFetch('Oats/Quake3.go').then((result) => {
  document.getElementById('golan').innerHTML = result
});

codeFetch('Oats/Quake3.gd').then((result) => {
  document.getElementById('gdscript').innerHTML = result
});

codeFetch('Oats/Quake3.hs').then((result) => {
  document.getElementById('hask').innerHTML = result
});

codeFetch('Oats/Quake3.java').then((result) => {
  document.getElementById('java').innerHTML = result
});

codeFetch('Oats/Quake3.js').then((result) => {
  document.getElementById('js').innerHTML = result
});

codeFetch('Oats/Quake3.lua').then((result) => {
  document.getElementById('luas').innerHTML = result
});

codeFetch('Oats/Quake3.nim').then((result) => {
  document.getElementById('nimb').innerHTML = result
});

codeFetch('Oats/Quake3.php').then((result) => {
  document.getElementById('php').innerHTML = result
});

codeFetch('Oats/Quake3.py').then((result) => {
  document.getElementById('python').innerHTML = result
});

codeFetch('Oats/Quake3.swift').then((result) => {
  document.getElementById('swift').innerHTML = result
});

codeFetch('Oats/Quake3.rs').then((result) => {
  document.getElementById('rust').innerHTML = result
});

codeFetch('Oats/Quake3.vbs').then((result) => {
  document.getElementById('vobs').innerHTML = result
});

codeFetch('Oats/Quake3.v').then((result) => {
  document.getElementById('vland').innerHTML = result
});

codeFetch('Oats/Quake3.zig').then((result) => {
  document.getElementById('zig').innerHTML = result
});

async function codeFetch(path) {
  let response = await fetch(path);
  let data = await response.text();
  return data;
}

function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}

function colorize() {
  var theScript = document.createElement("script");

  theScript.setAttribute("type","text/javascript");
  theScript.setAttribute("src","prism.js");
  document.getElementsByTagName("head")[0].appendChild(theScript);
}

sleep(500).then(() => {
  colorize()
});