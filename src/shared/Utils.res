// @send external focus: Dom.element => unit = "focus"
// @send external click: Dom.element => unit = "click"
// @send external blur: Dom.element => unit = "blur"
@send external setAttribute: (Dom.element, string, string) => unit = "setAttribute"

let querySelectAndThen = (selector, action) => {
  switch ReactDOM.querySelector(selector) {
  | Some(el) => el->action
  | None => ()
  }
}
// let getCssVar = %raw(`function (name) { return getComputedStyle(document.body).getPropertyValue(name) }`)
// let isDarkMode = () => getCssVar("color-scheme") == "dark"

let getTheme = () => {
  open Dom.Storage
  switch "landslidesTheme"->getItem(localStorage) {
  | Some(theme) => theme
  | None => "retro"
  }
}

let setTheme = theme => {
  "html"->querySelectAndThen(setAttribute(_, "data-theme", theme))
  open Dom.Storage
  "landslidesTheme"->setItem(theme, localStorage)
}
