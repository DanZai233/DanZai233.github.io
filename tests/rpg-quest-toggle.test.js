const fs = require('fs');
const path = require('path');
const root = path.resolve(__dirname, '..');
const html = fs.readFileSync(path.join(root, 'static/rpg/index.html'), 'utf8');
const css = fs.readFileSync(path.join(root, 'static/rpg/style.css'), 'utf8');
const game = fs.readFileSync(path.join(root, 'static/rpg/game.js'), 'utf8');

function assert(condition, message) {
  if (!condition) {
    console.error(`FAIL: ${message}`);
    process.exit(1);
  }
}

assert(html.includes('id="quest-toggle"'), 'index.html should include a quest toggle button');
assert(html.includes('aria-controls="quest-panel"'), 'quest toggle should be connected to quest panel for accessibility');
assert(css.includes('.quest-collapsed'), 'style.css should define quest-collapsed state');
assert(css.includes('#quest-toggle'), 'style.css should style the quest toggle button');
assert(/max-width:\s*980px[\s\S]*quest-collapsed/.test(css), 'mobile CSS should collapse quest panel to avoid covering controls');
assert(game.includes('questToggle'), 'game.js should wire questToggle element');
assert(game.includes('toggleQuestPanel'), 'game.js should implement toggleQuestPanel');
assert(game.includes('matchMedia'), 'game.js should use media query to default-collapse on mobile');
console.log('quest toggle contract passed');
