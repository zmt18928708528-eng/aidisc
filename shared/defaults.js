const DEFAULT_SEAT_MODELS = {
  decision: "chatgpt",
  execute: "grok",
  review: "gemini",
  p1: "chatgpt",
  p2: "claude",
  p3: "deepseek",
  critic: "gemini",
  pro1: "chatgpt",
  pro2: "claude",
  con1: "grok",
  con2: "deepseek",
  judge: "gemini",
  captain: "chatgpt",
  w1: "grok",
  w2: "claude",
  w3: "deepseek",
  merger: "gemini",
  red: "chatgpt",
  blue: "claude",
  ref: "gemini",
  pm: "chatgpt",
  design: "claude",
  dev: "deepseek",
  qa: "gemini",
  teacher: "chatgpt",
  student: "grok",
  ta: "claude",
  investor: "chatgpt",
  founder: "claude",
  followup: "grok",
  final: "deepseek"
};

const DEFAULT_SETTINGS = {
  scenario: "pipeline",
  seatModels: DEFAULT_SEAT_MODELS,
  customSeats: {}
};

if (typeof globalThis !== "undefined") {
  globalThis.AidiscDefaults = {
    DEFAULT_SEAT_MODELS: DEFAULT_SEAT_MODELS,
    DEFAULT_SETTINGS: DEFAULT_SETTINGS
  };
}
