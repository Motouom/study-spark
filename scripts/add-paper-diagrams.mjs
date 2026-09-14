import { mkdirSync, readFileSync, writeFileSync } from "node:fs";
import { dirname, join } from "node:path";

const root = process.cwd();
const papersRoot = join(root, "content", "papers");
const publicDir = join(root, "public", "paper-diagrams");

mkdirSync(publicDir, { recursive: true });

const svgShell = (title, body, width = 760, height = 420) => `<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" width="${width}" height="${height}" viewBox="0 0 ${width} ${height}" role="img" aria-labelledby="title desc">
  <title id="title">${title}</title>
  <desc id="desc">Clean black and white Cameroon GCE style question diagram.</desc>
  <rect width="${width}" height="${height}" fill="#fff"/>
  <style>
    text{font-family:Arial,Helvetica,sans-serif;font-size:18px;fill:#17120f}
    .small{font-size:14px}.tiny{font-size:12px}.label{font-weight:700}
    .line{stroke:#17120f;stroke-width:3;fill:none;stroke-linecap:round;stroke-linejoin:round}
    .thin{stroke:#17120f;stroke-width:1.7;fill:none;stroke-linecap:round;stroke-linejoin:round}
    .dash{stroke-dasharray:8 7}.fill{fill:#fff;stroke:#17120f;stroke-width:2}
  </style>
  ${body}
</svg>
`;

const diagrams = {
  "physics-circuit.svg": svgShell("Series circuit with ammeter and voltmeter", `
  <text x="28" y="36" class="label">Figure 1: Circuit used for electrical measurements</text>
  <path class="line" d="M110 105h460v210H110z"/>
  <line class="line" x1="110" y1="210" x2="70" y2="210"/><line class="line" x1="70" y1="185" x2="70" y2="235"/>
  <line class="line" x1="92" y1="190" x2="92" y2="230"/>
  <circle class="fill" cx="250" cy="105" r="34"/><text x="239" y="112" class="label">A</text>
  <rect class="fill" x="390" y="82" width="92" height="46"/><text x="412" y="113">R</text>
  <circle class="fill" cx="438" cy="210" r="34"/><text x="427" y="217" class="label">V</text>
  <line class="thin" x1="438" y1="128" x2="438" y2="176"/><line class="thin" x1="438" y1="244" x2="438" y2="315"/>
  <text x="120" y="352" class="small">Use the readings to determine resistance and discuss sources of error.</text>`),
  "physics-optics.svg": svgShell("Convex lens ray diagram", `
  <text x="28" y="36" class="label">Figure 1: Ray diagram for a converging lens</text>
  <line class="line" x1="70" y1="210" x2="700" y2="210"/>
  <path class="line" d="M380 80c-42 70-42 190 0 260M380 80c42 70 42 190 0 260"/>
  <line class="thin dash" x1="380" y1="75" x2="380" y2="345"/>
  <line class="line" x1="150" y1="210" x2="150" y2="120"/><polygon points="150,112 142,130 158,130" fill="#17120f"/>
  <line class="thin" x1="150" y1="120" x2="380" y2="120"/><line class="thin" x1="380" y1="120" x2="625" y2="280"/>
  <line class="thin" x1="150" y1="120" x2="625" y2="210"/>
  <text x="128" y="235" class="small">object</text><text x="322" y="235" class="small">F</text><text x="540" y="235" class="small">F</text>`),
  "physics-inclined-plane.svg": svgShell("Forces on an inclined plane", `
  <text x="28" y="36" class="label">Figure 1: Block on a rough inclined plane</text>
  <polygon class="fill" points="120,330 630,330 630,120"/>
  <rect class="fill" x="348" y="195" width="96" height="58" transform="rotate(-22 396 224)"/>
  <line class="line" x1="396" y1="224" x2="396" y2="110"/><text x="406" y="116">R</text>
  <line class="line" x1="396" y1="224" x2="396" y2="345"/><text x="406" y="326">W</text>
  <line class="line" x1="396" y1="224" x2="500" y2="180"/><text x="512" y="184">T</text>
  <path class="thin" d="M560 330a70 70 0 0 0-26-54"/><text x="546" y="303" class="small">30 degrees</text>`),
  "chemistry-titration.svg": svgShell("Titration apparatus", `
  <text x="28" y="36" class="label">Figure 1: Acid-base titration apparatus</text>
  <line class="line" x1="180" y1="70" x2="180" y2="350"/><line class="line" x1="120" y1="350" x2="250" y2="350"/>
  <rect class="fill" x="260" y="70" width="44" height="205" rx="12"/><line class="thin" x1="282" y1="275" x2="282" y2="314"/>
  <path class="fill" d="M390 315h150l-36-105h-78z"/><line class="thin" x1="426" y1="210" x2="504" y2="210"/>
  <line class="thin" x1="304" y1="160" x2="180" y2="160"/>
  <text x="318" y="104" class="small">burette</text><text x="552" y="290" class="small">conical flask</text><text x="424" y="236" class="small">indicator + alkali</text>`),
  "chemistry-cell.svg": svgShell("Electrochemical cell", `
  <text x="28" y="36" class="label">Figure 1: Simple electrochemical cell</text>
  <rect class="fill" x="100" y="175" width="180" height="150"/><rect class="fill" x="480" y="175" width="180" height="150"/>
  <rect x="160" y="95" width="30" height="165" fill="#fff" stroke="#17120f" stroke-width="2"/><rect x="570" y="95" width="30" height="165" fill="#fff" stroke="#17120f" stroke-width="2"/>
  <path class="line" d="M175 95v-40h410v40"/><circle class="fill" cx="380" cy="55" r="25"/><text x="371" y="62">V</text>
  <path class="thin" d="M250 185c50-60 150-60 205 0"/><text x="322" y="140" class="small">salt bridge</text>
  <text x="132" y="352" class="small">Zn/Zn2+</text><text x="520" y="352" class="small">Cu2+/Cu</text>`),
  "biology-cell.svg": svgShell("Plant cell diagram", `
  <text x="28" y="36" class="label">Figure 1: Generalised plant cell</text>
  <rect class="fill" x="120" y="90" width="500" height="260" rx="38"/>
  <rect class="thin" x="148" y="118" width="444" height="204" rx="30"/>
  <ellipse class="fill" cx="330" cy="218" rx="76" ry="52"/><circle class="fill" cx="330" cy="218" r="18"/>
  <ellipse class="thin" cx="505" cy="218" rx="62" ry="42"/>
  <path class="thin" d="M195 180c34-28 76-25 105 6M430 285c50 20 85 8 110-24"/>
  <text x="620" y="145" class="small">cell wall</text><line class="thin" x1="592" y1="140" x2="615" y2="140"/>
  <text x="220" y="72" class="small">nucleus</text><line class="thin" x1="300" y1="78" x2="324" y2="196"/>
  <text x="535" y="270" class="small">vacuole</text>`),
  "biology-heart.svg": svgShell("Human heart schematic", `
  <text x="28" y="36" class="label">Figure 1: Human heart, simplified section</text>
  <path class="fill" d="M260 110c-80 20-115 95-78 165 34 65 120 94 198 44 78 50 164 21 198-44 37-70 2-145-78-165-52-13-92 8-120 42-28-34-68-55-120-42z"/>
  <line class="thin" x1="380" y1="150" x2="380" y2="335"/>
  <text x="238" y="175" class="small">right atrium</text><text x="430" y="175" class="small">left atrium</text>
  <text x="230" y="276" class="small">right ventricle</text><text x="420" y="276" class="small">left ventricle</text>
  <path class="line" d="M312 100c0-45 135-45 135 0"/><text x="330" y="70" class="small">aorta</text>`),
  "geography-contours.svg": svgShell("Contour map extract", `
  <text x="28" y="36" class="label">Figure 1: Map extract showing contours and a river valley</text>
  <path class="thin" d="M130 250c70-105 235-135 405-70s125 145 25 175-315 35-430-105z"/>
  <path class="thin" d="M190 248c55-74 170-90 285-50s96 98 20 120-220 22-305-70z"/>
  <path class="thin" d="M255 245c35-42 95-54 166-30s62 54 12 68-128 12-178-38z"/>
  <path class="line" d="M390 80c-25 70-6 120-52 180-28 36-58 55-82 98"/>
  <text x="540" y="160" class="small">100 m</text><text x="482" y="215" class="small">200 m</text><text x="390" y="275" class="small">300 m</text><text x="250" y="365" class="small">River</text>`),
  "geography-climograph.svg": svgShell("Climograph", `
  <text x="28" y="36" class="label">Figure 1: Climate data for a Cameroon station</text>
  <line class="line" x1="90" y1="330" x2="690" y2="330"/><line class="line" x1="90" y1="70" x2="90" y2="330"/>
  ${Array.from({ length: 12 }, (_, i) => `<rect x="${115 + i * 45}" y="${310 - [40,55,95,130,175,205,230,220,180,135,80,45][i]}" width="26" height="${[40,55,95,130,175,205,230,220,180,135,80,45][i]}" fill="#fff" stroke="#17120f" stroke-width="1.5"/>`).join("")}
  <path class="line" d="M128 250L173 244L218 235L263 220L308 205L353 195L398 190L443 195L488 205L533 220L578 235L623 246"/>
  <text x="102" y="358" class="tiny">J F M A M J J A S O N D</text><text x="25" y="80" class="small">Rainfall</text><text x="615" y="92" class="small">Temp.</text>`),
  "geology-section.svg": svgShell("Geological cross-section", `
  <text x="28" y="36" class="label">Figure 1: Geological cross-section</text>
  <path class="fill" d="M70 150c95-60 180 20 270-20 105-46 195-36 340 35v185H70z"/>
  <path class="thin" d="M70 225c140-30 245 45 365 4 110-37 170-15 245 25"/>
  <path class="thin" d="M70 280c140-8 230 38 355 18 120-19 180 5 255 32"/>
  <line class="line" x1="305" y1="128" x2="455" y2="350"/><line class="line" x1="500" y1="134" x2="402" y2="350"/>
  <text x="318" y="95" class="small">faults</text><text x="94" y="206" class="small">sandstone</text><text x="94" y="263" class="small">shale</text><text x="94" y="326" class="small">granite</text>`),
  "agriculture-soil.svg": svgShell("Soil profile", `
  <text x="28" y="36" class="label">Figure 1: Soil profile in a farm plot</text>
  <rect class="fill" x="170" y="70" width="410" height="285"/>
  <line class="thin" x1="170" y1="125" x2="580" y2="125"/><line class="thin" x1="170" y1="195" x2="580" y2="195"/><line class="thin" x1="170" y1="275" x2="580" y2="275"/>
  <text x="200" y="105">A horizon: humus/topsoil</text><text x="200" y="165">B horizon: subsoil</text><text x="200" y="240">C horizon: weathered rock</text><text x="200" y="325">Parent material</text>
  <path class="thin" d="M210 86c25 10 48 10 75 0M410 150c34 16 60 12 86-6M275 224c40 18 88 18 130 0"/>
  `),
  "computer-network.svg": svgShell("Network topology", `
  <text x="28" y="36" class="label">Figure 1: School computer network</text>
  <rect class="fill" x="325" y="170" width="110" height="70" rx="10"/><text x="350" y="211">Switch</text>
  ${[[130,90,"PC 1"],[570,90,"PC 2"],[130,300,"Printer"],[570,300,"Server"]].map(([x,y,t])=>`<rect class="fill" x="${x}" y="${y}" width="115" height="62" rx="8"/><text x="${x+28}" y="${y+38}">${t}</text><line class="line" x1="${x+58}" y1="${y+62}" x2="380" y2="205"/>`).join("")}
  <text x="286" y="282" class="small">Identify devices, IP addressing, and security controls.</text>`),
  "economics-demand-supply.svg": svgShell("Demand and supply graph", `
  <text x="28" y="36" class="label">Figure 1: Market demand and supply</text>
  <line class="line" x1="110" y1="330" x2="650" y2="330"/><line class="line" x1="110" y1="330" x2="110" y2="70"/>
  <line class="line" x1="170" y1="285" x2="585" y2="95"/><text x="594" y="101">S</text>
  <line class="line" x1="170" y1="105" x2="585" y2="295"/><text x="594" y="302">D</text>
  <line class="thin dash" x1="380" y1="190" x2="380" y2="330"/><line class="thin dash" x1="110" y1="190" x2="380" y2="190"/>
  <text x="382" y="356">Qe</text><text x="62" y="196">Pe</text><text x="665" y="336">Quantity</text><text x="72" y="62">Price</text>`),
  "food-plate.svg": svgShell("Balanced diet plate", `
  <text x="28" y="36" class="label">Figure 1: Balanced diet plate</text>
  <circle class="line" cx="380" cy="220" r="145"/>
  <path class="thin" d="M380 75v290M235 220h290M279 118c60 52 130 58 202 0"/>
  <text x="278" y="180">Carbohydrates</text><text x="417" y="180">Proteins</text><text x="275" y="276">Vegetables</text><text x="420" y="276">Fruits</text>
  <text x="88" y="380" class="small">Use the plate to plan meals and explain deficiency risks.</text>`),
  "math-triangle.svg": svgShell("Triangle ABC", `
  <text x="28" y="36" class="label">Figure 1: Triangle ABC</text>
  <polygon class="line" points="155,315 585,315 405,95"/>
  <text x="137" y="340">A</text><text x="592" y="340">B</text><text x="405" y="78">C</text>
  <text x="350" y="344">c = 9</text><text x="240" y="190">b = 8</text><text x="505" y="200">a = 7</text>
  <path class="thin" d="M205 315a55 55 0 0 1 25-44"/><path class="thin" d="M545 315a56 56 0 0 0-19-48"/>
  <text x="95" y="382" class="small">Use the cosine rule, sine rule, or Heron's formula where appropriate.</text>`),
  "math-parabola.svg": svgShell("Parabola and inverse sketch axes", `
  <text x="28" y="36" class="label">Figure 1: Graph sketch axes</text>
  <line class="line" x1="95" y1="325" x2="680" y2="325"/><line class="line" x1="380" y1="360" x2="380" y2="65"/>
  <path class="line" d="M215 285c55-160 275-160 330 0"/>
  <line class="thin dash" x1="120" y1="345" x2="630" y2="95"/>
  <text x="645" y="342">x</text><text x="392" y="82">y</text><text x="523" y="265">y = h(x)</text><text x="510" y="118">y = x</text>`),
  "math-argand.svg": svgShell("Argand diagram", `
  <text x="28" y="36" class="label">Figure 1: Argand diagram</text>
  <line class="line" x1="95" y1="220" x2="680" y2="220"/><line class="line" x1="380" y1="350" x2="380" y2="75"/>
  <circle class="thin" cx="380" cy="220" r="105"/><line class="line" x1="380" y1="220" x2="485" y2="115"/>
  <path class="thin" d="M430 220a50 50 0 0 0-15-35"/><text x="438" y="192" class="small">45 degrees</text>
  <text x="650" y="248">Re</text><text x="397" y="88">Im</text><text x="492" y="112">z</text>`),
  "math-statistics.svg": svgShell("Cumulative frequency curve", `
  <text x="28" y="36" class="label">Figure 1: Cumulative frequency curve</text>
  <line class="line" x1="100" y1="330" x2="675" y2="330"/><line class="line" x1="100" y1="330" x2="100" y2="75"/>
  <path class="line" d="M115 318C190 310 230 285 285 245S380 165 465 125 585 92 650 85"/>
  <line class="thin dash" x1="100" y1="205" x2="360" y2="205"/><line class="thin dash" x1="360" y1="205" x2="360" y2="330"/>
  <text x="55" y="211" class="small">Q2</text><text x="347" y="356" class="small">median</text><text x="640" y="356" class="small">mark</text><text x="28" y="90" class="small">cum. freq.</text>`),
};

for (const [file, svg] of Object.entries(diagrams)) {
  writeFileSync(join(publicDir, file), svg);
}

const plan = {
  "mathematics": [["set-1.md", 10, "math-triangle.svg", "Triangle ABC"], ["set-2.md", 8, "math-parabola.svg", "Graph sketch axes"], ["set-3.md", 13, "math-argand.svg", "Argand diagram"]],
  "additional-mathematics": [["set-1.md", 10, "math-triangle.svg", "Triangle ABC"], ["set-2.md", 24, "math-statistics.svg", "Cumulative frequency curve"], ["set-3.md", 8, "math-parabola.svg", "Graph sketch axes"]],
  "further-mathematics": [["set-1.md", 13, "math-argand.svg", "Argand diagram"], ["set-2.md", 24, "math-statistics.svg", "Cumulative frequency curve"], ["set-3.md", 10, "math-triangle.svg", "Triangle ABC"]],
  "pure-mathematics-with-mechanics": [["set-1.md", 10, "math-triangle.svg", "Triangle ABC"], ["set-2.md", 8, "math-parabola.svg", "Graph sketch axes"], ["set-3.md", 13, "math-argand.svg", "Argand diagram"]],
  "pure-mathematics-with-statistics": [["set-1.md", 24, "math-statistics.svg", "Cumulative frequency curve"], ["set-2.md", 13, "math-argand.svg", "Argand diagram"], ["set-3.md", 10, "math-triangle.svg", "Triangle ABC"]],
  "physics": [["set-1.md", 2, "physics-circuit.svg", "Circuit diagram"], ["set-2.md", 3, "physics-optics.svg", "Convex lens ray diagram"], ["set-3.md", 4, "physics-inclined-plane.svg", "Inclined plane force diagram"]],
  "chemistry": [["set-1.md", 2, "chemistry-titration.svg", "Titration apparatus"], ["set-2.md", 6, "chemistry-cell.svg", "Electrochemical cell"], ["set-3.md", 2, "chemistry-titration.svg", "Titration apparatus"]],
  "biology": [["set-1.md", 1, "biology-cell.svg", "Plant cell diagram"], ["set-2.md", 6, "biology-heart.svg", "Human heart diagram"], ["set-3.md", 1, "biology-cell.svg", "Plant cell diagram"]],
  "human-biology": [["set-1.md", 1, "biology-heart.svg", "Human heart diagram"], ["set-2.md", 2, "biology-cell.svg", "Cell diagram"], ["set-3.md", 6, "biology-heart.svg", "Human heart diagram"]],
  "geography": [["set-1.md", 1, "geography-contours.svg", "Contour map extract"], ["set-2.md", 2, "geography-climograph.svg", "Climograph"], ["set-3.md", 1, "geography-contours.svg", "Contour map extract"]],
  "geology": [["set-1.md", 1, "geology-section.svg", "Geological cross-section"], ["set-2.md", 4, "geology-section.svg", "Geological cross-section"], ["set-3.md", 8, "geology-section.svg", "Geological cross-section"]],
  "agricultural-science": [["set-1.md", 1, "agriculture-soil.svg", "Soil profile"], ["set-2.md", 1, "agriculture-soil.svg", "Soil profile"], ["set-3.md", 1, "agriculture-soil.svg", "Soil profile"]],
  "computer-science": [["set-1.md", 2, "computer-network.svg", "Computer network topology"], ["set-2.md", 3, "computer-network.svg", "Computer network topology"], ["set-3.md", 2, "computer-network.svg", "Computer network topology"]],
  "ict": [["set-1.md", 2, "computer-network.svg", "Computer network topology"], ["set-2.md", 3, "computer-network.svg", "Computer network topology"], ["set-3.md", 2, "computer-network.svg", "Computer network topology"]],
  "economics": [["set-1.md", 1, "economics-demand-supply.svg", "Demand and supply graph"], ["set-2.md", 5, "economics-demand-supply.svg", "Demand and supply graph"], ["set-3.md", 1, "economics-demand-supply.svg", "Demand and supply graph"]],
  "commerce": [["set-1.md", 4, "economics-demand-supply.svg", "Market graph"], ["set-2.md", 4, "economics-demand-supply.svg", "Market graph"], ["set-3.md", 4, "economics-demand-supply.svg", "Market graph"]],
  "business-studies": [["set-1.md", 3, "economics-demand-supply.svg", "Business market graph"], ["set-2.md", 3, "economics-demand-supply.svg", "Business market graph"], ["set-3.md", 3, "economics-demand-supply.svg", "Business market graph"]],
  "food-and-nutrition": [["set-1.md", 1, "food-plate.svg", "Balanced diet plate"], ["set-2.md", 1, "food-plate.svg", "Balanced diet plate"], ["set-3.md", 1, "food-plate.svg", "Balanced diet plate"]],
  "food-science-and-nutrition": [["set-1.md", 1, "food-plate.svg", "Balanced diet plate"], ["set-2.md", 1, "food-plate.svg", "Balanced diet plate"], ["set-3.md", 1, "food-plate.svg", "Balanced diet plate"]],
};

function insertDiagram(markdown, qNumber, file, alt) {
  const image = `![${alt}](/paper-diagrams/${file})`;
  if (markdown.includes(image)) return markdown;

  const questionMarker = `**Q${qNumber}.**`;
  const start = markdown.indexOf(questionMarker);
  if (start === -1) {
    throw new Error(`Could not find ${questionMarker}`);
  }

  const insertAt = markdown.indexOf("\n\n(a)", start);
  if (insertAt === -1) {
    throw new Error(`Could not find first answer part after ${questionMarker}`);
  }

  return `${markdown.slice(0, insertAt)}\n\n${image}${markdown.slice(insertAt)}`;
}

let updated = 0;
for (const [subjectSlug, entries] of Object.entries(plan)) {
  for (const [setFile, question, file, alt] of entries) {
    const paperPath = join(papersRoot, subjectSlug, setFile);
    const before = readFileSync(paperPath, "utf8");
    const after = insertDiagram(before, question, file, alt);
    if (after !== before) {
      mkdirSync(dirname(paperPath), { recursive: true });
      writeFileSync(paperPath, after);
      updated += 1;
    }
  }
}

console.log(`Wrote ${Object.keys(diagrams).length} diagram assets and updated ${updated} paper files.`);
