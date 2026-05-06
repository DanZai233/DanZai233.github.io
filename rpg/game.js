/* 一只小羊羔的都市小窝 RPG
 * A tiny canvas RPG inspired by blog.danzaii.cn.
 */
const canvas = document.getElementById('game');
const ctx = canvas.getContext('2d');
const TILE = 32;
const COLS = canvas.width / TILE;
const ROWS = canvas.height / TILE;

const ui = {
  start: document.getElementById('start-screen'),
  startBtn: document.getElementById('start-btn'),
  aboutBtn: document.getElementById('about-btn'),
  aboutPanel: document.getElementById('about-panel'),
  closeAbout: document.getElementById('close-about'),
  hud: document.getElementById('hud'),
  questPanel: document.getElementById('quest-panel'),
  questList: document.getElementById('quest-list'),
  warmth: document.getElementById('warmth'),
  inspiration: document.getElementById('inspiration'),
  memoryCount: document.getElementById('memory-count'),
  memoryTotal: document.getElementById('memory-total'),
  chapter: document.getElementById('chapter-label'),
  dialogue: document.getElementById('dialogue'),
  speaker: document.getElementById('speaker'),
  dialogueText: document.getElementById('dialogue-text'),
  mapMenu: document.getElementById('map-menu'),
  closeMenu: document.getElementById('close-menu'),
  memoryGrid: document.getElementById('memory-grid'),
  ending: document.getElementById('ending'),
  endingText: document.getElementById('ending-text'),
  restartBtn: document.getElementById('restart-btn'),
};

const baseMemories = [
  { id: 'blog', title: '一只小羊羔的窝', icon: '🐑', summary: '博客不是冷冰冰的技术档案，而是技术、生活、二次元审美和柔软情绪一起住着的小窝。', quest: '读完博客门口的欢迎牌' },
  { id: 'works', title: '所作，所为', icon: '🧭', summary: '十五个以上的小项目汇成行动力：MYGallery、AIMBOT、MoodCard、Chromatopoetry、PixelBead、Record-ME……所作，皆为热爱。', quest: '点亮作品集路灯' },
  { id: 'photo', title: '所见，所闻', icon: '📷', summary: '照片墙把开发者从代码里拉回真实生活：街景、光线、旅途、相机和猫猫都在这里留下呼吸。', quest: '修好照片墙的迷你地图' },
  { id: 'lumina', title: 'LUMINA Atelier', icon: '🎨', summary: 'AI 生图工作室像一张干净创作桌：工作区、参考图、灵感标签、上下文延续，把想象温柔接住。', quest: '收集一束 LUMINA 灵感光' },
  { id: 'inside', title: 'Inside-ME', icon: '🕯️', summary: '和过去的自己对话，看到记忆一条条点亮：深处不是没有光，只是平时没人替你照。', quest: '在深夜便利店接上旧日记忆' },
  { id: 'pixel', title: 'PixelBead', icon: '🟣', summary: '给拼豆人一个无广告、无强制登录、永久免费的纯净创作工具；温柔落在具体功能里。', quest: '帮小猫拼出粉色路标' },
  { id: 'backup', title: '一年后的自己', icon: '💾', summary: '旧博客曾经丢失，又靠备份复原。把数据传给一年后的自己，是蛋仔式的笨拙但可靠。', quest: '把备份胶囊送回云盘' },
  { id: 'elysia', title: '爱莉希雅来信', icon: '💌', summary: '“认真生活的人最可爱了。”博客里那些来自乐园的信，像城市夜里会发光的便利贴。', quest: '在樱花站台收到一封信' },
  { id: 'mutsumi', title: '若叶睦的安静切片', icon: '🌙', summary: '安静、柔软、沉默但有情绪；不必很夸张，只要光线和眼神对了，就已经有故事。', quest: '在天桥上留住安静月光' },
  { id: 'security', title: '被攻击后的警钟', icon: '🔐', summary: '开放端口和弱密码换来删库教训。后来学会：保护珍视的东西，也是一种温柔。', quest: '给城市数据库装上门锁' },
  { id: 'f12', title: '藏进 F12 的心思', icon: '🧩', summary: '有些心意不放在首页，而藏在开发者工具、注释、彩蛋和只有懂的人才会发现的角落。', quest: '找到 F12 小巷的彩蛋' },
  { id: 'rest', title: '记得休息', icon: '☕', summary: '项目制作机也要休息。报告周、论文、上线、修 bug 之后，城市会给蛋仔留一盏暖灯。', quest: '在屋顶咖啡馆坐一会儿' },
];

const storyNodes = [
  {
    id: 'intro', speaker: '旁白', once: true,
    lines: [
      '粉色黄昏落在城市玻璃幕墙上。blog.danzaii.cn 的入口灯牌闪了三下，像一只小羊羔轻轻打了个喷嚏。',
      '“蛋仔，城市的记忆碎片散开了。”一个像博客评论气泡一样的声音说，“去把它们捡回来吧。”',
      '你摸了摸背包：里面有 Markdown 笔记、备用 SSH 配置、一小盒彩色拼豆，还有一封没拆开的粉色信。'
    ]
  }
];

const baseNpcs = [
  { x: 4, y: 4, color: '#ffb7dd', name: '博客门口的小羊', memory: 'blog', lines: ['欢迎来到一只小羊羔的窝。这里不只收技术笔记，也收下班路上的风、项目上线后的开心、以及偶尔冒出来的二次元心动。', '小羊把一枚首页铃铛交给你：记录不是为了显得厉害，是为了让以后回头时还能找到自己。'], gain: { warmth: 2, inspiration: 1 } },
  { x: 9, y: 5, color: '#a8d8ff', name: '作品集路牌', memory: 'works', lines: ['“所作，所为”路牌上贴满了项目卡片：MYGallery、AIMBOT、MoodCard、Chromatopoetry、Toiletime、NewsChronicle-AI、PixelBead、Record-ME……', '它们像一排小店，不一定都很大，但每一家都亮着“我试过了”的灯。'], gain: { warmth: 1, inspiration: 3 } },
  { x: 15, y: 4, color: '#ffe59f', name: '摄影猫猫', memory: 'photo', lines: ['摄影猫猫蹲在照片墙旁边，爪子按着一张带 GPS 的街景。', '“代码能证明你做了什么，照片会提醒你去过哪里。”它把迷你地图重新点亮，城市多了一点真实的呼吸。'], gain: { warmth: 2, inspiration: 1 } },
  { x: 23, y: 7, color: '#ffc0df', name: 'LUMINA 看板娘', memory: 'lumina', lines: ['LUMINA Atelier 的玻璃门后，参考图、提示词标签和灵感画廊像便利贴一样贴满墙面。', '“不要把每次生成都当作孤岛。”她说，“创作是一段连续的上下文，慢慢磨，光就会出来。”'], gain: { warmth: 1, inspiration: 4 } },
  { x: 6, y: 11, color: '#d6c4ff', name: '深夜便利店店员', memory: 'inside', lines: ['便利店的冰柜嗡嗡响，里面放着一排标着日期的聊天记录。', '店员把一盏小灯推给你：“中之我不是替你活人生，它只是陪你看见：你是一条还在生长的轨迹。”'], gain: { warmth: 4, inspiration: 1 } },
  { x: 13, y: 12, color: '#c39bff', name: '拼豆小猫', memory: 'pixel', lines: ['拼豆小猫把粉色、紫色、奶白色的小珠子摊了一地，认真拼出一个“无广告”的路标。', '“工具可以很小，但要干净。”它说，“给朋友做一个方便的东西，就是很厉害的温柔。”'], gain: { warmth: 3, inspiration: 2 } },
  { x: 21, y: 12, color: '#9ff0dc', name: '云盘邮差', memory: 'backup', lines: ['云盘邮差背着写有 backup 的胶囊，气喘吁吁地跑来。', '“旧博客能复原，是因为过去的你悄悄留了一手。把数据传给一年后的自己吧，他会感谢你的。”'], gain: { warmth: 3, inspiration: 1 } },
  { x: 25, y: 15, color: '#ffa3c5', name: '樱花站台广播', memory: 'elysia', lines: ['站台广播忽然变成轻快的声音：“呐～蛋仔，认真生活的人最可爱了哦！”', '粉色信封落进你手里。信的最后写着：继续发光吧，但也要记得休息。'], gain: { warmth: 4, inspiration: 2 } },
  { x: 17, y: 17, color: '#c8d5ff', name: '天桥上的月光', memory: 'mutsumi', lines: ['天桥上的月光很安静，像若叶睦站在画面边缘，不说话，却把情绪留在空气里。', '你学会了：不是所有故事都需要大声。有时柔软的沉默，也能照亮一整页。'], gain: { warmth: 2, inspiration: 3 } },
  { x: 3, y: 16, color: '#92e0c8', name: '数据库门卫', memory: 'security', lines: ['数据库门卫把 MongoDB 的门锁重新拧紧，旁边贴着“外网开放前请三思”的便签。', '“被攻击不是结尾，是安全意识的开头。要强大自身，才有力量保护珍视的东西。”'], gain: { warmth: 1, inspiration: 2 } },
  { x: 10, y: 17, color: '#fff0a6', name: 'F12 小巷彩蛋', memory: 'f12', lines: ['你在小巷墙角按下 F12，发现一行藏起来的注释：<!-- 今天也有认真喜欢这个世界。 -->', '有些心思不必贴在首页。能被发现的人，自然会笑一下。'], gain: { warmth: 3, inspiration: 3 } },
  { x: 27, y: 18, color: '#ffd4a6', name: '屋顶咖啡馆', memory: 'rest', lines: ['屋顶咖啡馆能看见整座城市：博客、作品集、照片墙、AI 工坊、拼豆店和深夜便利店都亮着。', '咖啡师把杯子推过来：“项目制作机也要休息。今天你已经把灯点亮得很好了。”'], gain: { warmth: 5, inspiration: 1 } },
];

const extraStory = window.RPG_EXTRA || { memories: [], npcs: [], chapters: [], codex: [] };
const memories = [...baseMemories, ...extraStory.memories];
const npcs = [...baseNpcs, ...extraStory.npcs];

const mapObjects = [
  { x: 1, y: 1, w: 28, h: 1, type: 'wall' }, { x: 1, y: 18, w: 28, h: 1, type: 'wall' },
  { x: 1, y: 1, w: 1, h: 18, type: 'wall' }, { x: 28, y: 1, w: 1, h: 18, type: 'wall' },
  { x: 7, y: 3, w: 1, h: 5, type: 'building', label: 'BLOG' }, { x: 18, y: 3, w: 1, h: 4, type: 'building', label: 'ATELIER' },
  { x: 2, y: 9, w: 7, h: 1, type: 'road' }, { x: 11, y: 9, w: 17, h: 1, type: 'road' },
  { x: 15, y: 10, w: 1, h: 8, type: 'road' }, { x: 20, y: 2, w: 1, h: 15, type: 'road' },
  { x: 4, y: 13, w: 4, h: 1, type: 'building', label: 'DB' }, { x: 23, y: 11, w: 3, h: 1, type: 'building', label: '站台' }
];

const player = { x: 3, y: 3, px: 3 * TILE, py: 3 * TILE, color: '#fff4f9', dir: 'down' };
const state = { running: false, dialogue: null, dialogueIndex: 0, keys: new Set(), collected: new Set(), warmth: 0, inspiration: 0, tick: 0 };

ui.memoryTotal.textContent = memories.length;

function rectsOverlap(a, b) { return a.x < b.x + b.w && a.x + a.w > b.x && a.y < b.y + b.h && a.y + a.h > b.y; }
function isBlocked(x, y) {
  if (x < 1 || y < 1 || x >= COLS - 1 || y >= ROWS - 1) return true;
  return mapObjects.some(o => ['wall', 'building'].includes(o.type) && rectsOverlap({ x, y, w: 1, h: 1 }, o));
}
function getNpcAt(x, y) { return npcs.find(n => n.x === x && n.y === y); }
function getFacingTile() {
  const delta = { up: [0, -1], down: [0, 1], left: [-1, 0], right: [1, 0] }[player.dir];
  return { x: player.x + delta[0], y: player.y + delta[1] };
}
function updateHud() {
  ui.warmth.textContent = state.warmth;
  ui.inspiration.textContent = state.inspiration;
  ui.memoryCount.textContent = state.collected.size;
  if (state.collected.size >= 9) ui.chapter.textContent = '终章：把城市折成一盏灯';
  else if (state.collected.size >= 5) ui.chapter.textContent = '第 2 章：记忆在夜里接上线';
  renderQuests();
  renderMemoryGrid();
}
function renderQuests() {
  ui.questList.innerHTML = memories.map(m => `<li class="${state.collected.has(m.id) ? 'done' : ''}">${state.collected.has(m.id) ? '✓' : '○'} ${m.quest}</li>`).join('');
}
function renderMemoryGrid() {
  ui.memoryGrid.innerHTML = memories.map(m => {
    const unlocked = state.collected.has(m.id);
    return `<article class="memory-card ${unlocked ? '' : 'locked'}"><h3>${m.icon} ${m.title}</h3><p>${unlocked ? m.summary : '还没有点亮。去城市里和相关的人或物互动吧。'}</p></article>`;
  }).join('') + (extraStory.chapters?.length ? `<article class="memory-card"><h3>📖 长篇脚本</h3><p>已内置 ${extraStory.chapters.length} 幕主线梗概、${extraStory.codex?.length || 0} 条人物/城市札记；全部 NPC 对话与札记合计 1 万字以上，会随着探索逐步展开。</p></article>` : '');
}
function openDialogue(speaker, lines, onDone) {
  state.dialogue = { speaker, lines, onDone };
  state.dialogueIndex = 0;
  ui.speaker.textContent = speaker;
  ui.dialogueText.textContent = lines[0];
  ui.dialogue.classList.remove('hidden');
}
function advanceDialogue() {
  if (!state.dialogue) return false;
  state.dialogueIndex++;
  if (state.dialogueIndex < state.dialogue.lines.length) {
    ui.dialogueText.textContent = state.dialogue.lines[state.dialogueIndex];
  } else {
    const done = state.dialogue.onDone;
    state.dialogue = null;
    ui.dialogue.classList.add('hidden');
    if (done) done();
  }
  return true;
}
function collectNpc(npc) {
  if (!state.collected.has(npc.memory)) {
    state.collected.add(npc.memory);
    state.warmth += npc.gain.warmth;
    state.inspiration += npc.gain.inspiration;
    updateHud();
    const chapter = extraStory.chapters?.[Math.min(extraStory.chapters.length - 1, Math.floor(state.collected.size / 5))];
    if (chapter && state.collected.size % 5 === 0) {
      openDialogue('章节札记', [chapter]);
    }
    if (state.collected.size === memories.length) showEnding();
  }
}
function interact() {
  const tile = getFacingTile();
  const npc = getNpcAt(tile.x, tile.y) || getNpcAt(player.x, player.y);
  if (npc) {
    const already = state.collected.has(npc.memory);
    const lines = already ? [`${npc.name}朝你挥挥手：“这盏灯已经亮着啦。继续往城市别处看看吧。”`] : npc.lines;
    openDialogue(npc.name, lines, () => !already && collectNpc(npc));
  } else {
    openDialogue('蛋仔', ['这里有晚风、路灯和一点点粉色霓虹。也许再往前走走，会遇到新的记忆碎片。']);
  }
}
function showEnding() {
  setTimeout(() => {
    ui.endingText.innerHTML = `蛋仔把最后一枚记忆碎片放回博客入口。<br><br>城市没有变得喧闹，它只是更完整了：代码继续运行，照片继续发光，AI 工坊保留想象，旧备份守着过去，来自爱莉希雅的信贴在屋顶咖啡馆门口。<br><br><b>一只小羊羔的窝</b>不是终点，而是一间永远能回来坐坐的房间。`;
    ui.ending.classList.remove('hidden');
  }, 350);
}

function drawTile(x, y, color) { ctx.fillStyle = color; ctx.fillRect(x * TILE, y * TILE, TILE, TILE); }
function drawText(text, x, y, color = '#fff') { ctx.fillStyle = color; ctx.font = '13px system-ui, sans-serif'; ctx.textAlign = 'center'; ctx.fillText(text, x, y); }
function drawMap() {
  const grad = ctx.createLinearGradient(0, 0, canvas.width, canvas.height);
  grad.addColorStop(0, '#2b2740'); grad.addColorStop(0.55, '#303856'); grad.addColorStop(1, '#43304a');
  ctx.fillStyle = grad; ctx.fillRect(0, 0, canvas.width, canvas.height);
  for (let y = 0; y < ROWS; y++) for (let x = 0; x < COLS; x++) {
    if ((x + y) % 2 === 0) { ctx.fillStyle = 'rgba(255,255,255,.025)'; ctx.fillRect(x*TILE, y*TILE, TILE, TILE); }
  }
  mapObjects.forEach(o => {
    const colors = { wall: '#1b1b2b', building: '#4b4267', road: '#545f7d' };
    ctx.fillStyle = colors[o.type] || '#333';
    ctx.fillRect(o.x*TILE, o.y*TILE, o.w*TILE, o.h*TILE);
    ctx.strokeStyle = 'rgba(255,255,255,.12)'; ctx.strokeRect(o.x*TILE+.5, o.y*TILE+.5, o.w*TILE-1, o.h*TILE-1);
    if (o.label) drawText(o.label, (o.x+o.w/2)*TILE, (o.y+0.72)*TILE, '#ffd5ec');
  });
  // lamps
  for (const n of npcs) {
    const lit = state.collected.has(n.memory);
    ctx.beginPath();
    ctx.fillStyle = lit ? 'rgba(255, 226, 150, .34)' : 'rgba(255,255,255,.07)';
    ctx.arc((n.x+.5)*TILE, (n.y+.5)*TILE, lit ? 25 : 16, 0, Math.PI*2); ctx.fill();
  }
}
function drawNpc(n) {
  const lit = state.collected.has(n.memory);
  ctx.save();
  ctx.translate(n.x*TILE + TILE/2, n.y*TILE + TILE/2);
  ctx.fillStyle = n.color;
  ctx.beginPath(); ctx.arc(0, 0, 11, 0, Math.PI*2); ctx.fill();
  ctx.fillStyle = lit ? '#fff4a8' : '#fff';
  ctx.font = '17px serif'; ctx.textAlign = 'center'; ctx.fillText(memories.find(m=>m.id===n.memory).icon, 0, 6);
  if (!lit) { ctx.strokeStyle = '#fff'; ctx.lineWidth = 2; ctx.strokeRect(-15, -15, 30, 30); }
  ctx.restore();
}
function drawPlayer() {
  const bob = Math.sin(state.tick / 12) * 2;
  ctx.save();
  ctx.translate(player.x*TILE + TILE/2, player.y*TILE + TILE/2 + bob);
  ctx.fillStyle = 'rgba(0,0,0,.22)'; ctx.beginPath(); ctx.ellipse(0, 13, 12, 5, 0, 0, Math.PI*2); ctx.fill();
  ctx.fillStyle = '#fff7fb'; ctx.beginPath(); ctx.arc(0, -2, 12, 0, Math.PI*2); ctx.fill();
  ctx.fillStyle = '#ff9fcf'; ctx.beginPath(); ctx.arc(-5, -5, 2, 0, Math.PI*2); ctx.arc(5, -5, 2, 0, Math.PI*2); ctx.fill();
  ctx.strokeStyle = '#d7c5d8'; ctx.lineWidth = 3; ctx.beginPath(); ctx.moveTo(-8, -13); ctx.quadraticCurveTo(-13, -23, -3, -18); ctx.moveTo(8, -13); ctx.quadraticCurveTo(13, -23, 3, -18); ctx.stroke();
  ctx.fillStyle = '#68536e'; ctx.font = '10px system-ui'; ctx.textAlign = 'center'; ctx.fillText('蛋仔', 0, 25);
  ctx.restore();
}
function draw() {
  state.tick++;
  drawMap();
  npcs.forEach(drawNpc);
  drawPlayer();
  const tile = getFacingTile();
  const npc = getNpcAt(tile.x, tile.y);
  if (npc && !state.dialogue) {
    ctx.fillStyle = 'rgba(255,255,255,.92)'; ctx.fillRect(tile.x*TILE-12, tile.y*TILE-22, TILE+24, 18);
    drawText('按 Enter 互动', tile.x*TILE+TILE/2, tile.y*TILE-8, '#4b315f');
  }
}
let lastMove = 0;
function update(now) {
  if (state.running && !state.dialogue && now - lastMove > 120) {
    let dx = 0, dy = 0;
    if (state.keys.has('ArrowUp') || state.keys.has('w')) dy = -1;
    else if (state.keys.has('ArrowDown') || state.keys.has('s')) dy = 1;
    else if (state.keys.has('ArrowLeft') || state.keys.has('a')) dx = -1;
    else if (state.keys.has('ArrowRight') || state.keys.has('d')) dx = 1;
    if (dx || dy) {
      player.dir = dx > 0 ? 'right' : dx < 0 ? 'left' : dy > 0 ? 'down' : 'up';
      const nx = player.x + dx, ny = player.y + dy;
      if (!isBlocked(nx, ny)) { player.x = nx; player.y = ny; }
      lastMove = now;
    }
  }
  draw(); requestAnimationFrame(update);
}

function startGame() {
  state.running = true;
  ui.start.classList.add('hidden'); ui.hud.classList.remove('hidden'); ui.questPanel.classList.remove('hidden');
  updateHud();
  openDialogue(storyNodes[0].speaker, storyNodes[0].lines);
}
function toggleMenu(show = !ui.mapMenu.classList.contains('hidden')) {
  if (show) { renderMemoryGrid(); ui.mapMenu.classList.remove('hidden'); ui.mapMenu.setAttribute('aria-hidden', 'false'); }
  else { ui.mapMenu.classList.add('hidden'); ui.mapMenu.setAttribute('aria-hidden', 'true'); }
}
function resetGame() { location.reload(); }

window.addEventListener('keydown', e => {
  const key = e.key;
  if (['ArrowUp','ArrowDown','ArrowLeft','ArrowRight',' ','Enter'].includes(key)) e.preventDefault();
  if (key === 'Enter' || key === ' ') { if (!advanceDialogue()) interact(); return; }
  if (key.toLowerCase() === 'm') { toggleMenu(true); return; }
  state.keys.add(key.toLowerCase()); state.keys.add(key);
});
window.addEventListener('keyup', e => { state.keys.delete(e.key.toLowerCase()); state.keys.delete(e.key); });
ui.startBtn.addEventListener('click', startGame);
ui.aboutBtn.addEventListener('click', () => { ui.aboutPanel.classList.remove('hidden'); ui.aboutPanel.setAttribute('aria-hidden', 'false'); });
ui.closeAbout.addEventListener('click', () => { ui.aboutPanel.classList.add('hidden'); ui.aboutPanel.setAttribute('aria-hidden', 'true'); });
ui.closeMenu.addEventListener('click', () => toggleMenu(false));
ui.restartBtn.addEventListener('click', resetGame);

renderQuests(); renderMemoryGrid(); requestAnimationFrame(update);
