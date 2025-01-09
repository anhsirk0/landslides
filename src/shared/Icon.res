type props = {className?: string, weight?: string}
type t = React.component<props>

@module("@phosphor-icons/react") external spotify: t = "SpotifyLogo"
@module("@phosphor-icons/react") external google: t = "GoogleLogo"
@module("@phosphor-icons/react") external apple: t = "AppleLogo"
@module("@phosphor-icons/react") external youtube: t = "YoutubeLogo"
@module("@phosphor-icons/react") external palette: t = "Palette"
@module("@phosphor-icons/react") external sparkle: t = "Sparkle"
@module("@phosphor-icons/react") external caretLeft: t = "CaretLeft"
@module("@phosphor-icons/react") external caretRight: t = "CaretRight"
@module("@phosphor-icons/react") external caretDown: t = "CaretDown"
@module("@phosphor-icons/react") external arrowDown: t = "ArrowDown"
@module("@phosphor-icons/react") external television: t = "Television"
@module("@phosphor-icons/react") external download: t = "CloudArrowDown"
@module("@phosphor-icons/react") external baby: t = "Baby"
@module("@phosphor-icons/react") external binoculars: t = "Binoculars"
@module("@phosphor-icons/react") external house: t = "House"
@module("@phosphor-icons/react") external menu: t = "List"
@module("@phosphor-icons/react") external microphone: t = "Microphone"
@module("@phosphor-icons/react") external magnifyingGlass: t = "MagnifyingGlass"
@module("@phosphor-icons/react") external bell: t = "Bell"
@module("@phosphor-icons/react") external globe: t = "Globe"
@module("@phosphor-icons/react") external userCircle: t = "UserCircle"
@module("@phosphor-icons/react") external history: t = "ClockCounterClockwise"
@module("@phosphor-icons/react") external video: t = "Video"
@module("@phosphor-icons/react") external clock: t = "Clock"
@module("@phosphor-icons/react") external thumbsUp: t = "ThumbsUp"
@module("@phosphor-icons/react") external plus: t = "Plus"
@module("@phosphor-icons/react") external play: t = "Play"
@module("@phosphor-icons/react") external playlist: t = "Playlist"
@module("@phosphor-icons/react") external chat: t = "Chat"
@module("@phosphor-icons/react") external repeat: t = "Repeat"
@module("@phosphor-icons/react") external heart: t = "Heart"
@module("@phosphor-icons/react") external dotsThree: t = "DotsThree"

let bluesky: t = props =>
  <svg
    xmlns="http://www.w3.org/2000/svg"
    className=?props.className
    fill="none"
    viewBox="0 0 64 57"
    width="32">
    <path
      d="M13.873 3.805C21.21 9.332 29.103 20.537 32 26.55v15.882c0-.338-.13.044-.41.867-1.512 4.456-7.418 21.847-20.923 7.944-7.111-7.32-3.819-14.64 9.125-16.85-7.405 1.264-15.73-.825-18.014-9.015C1.12 23.022 0 8.51 0 6.55 0-3.268 8.579-.182 13.873 3.805ZM50.127 3.805C42.79 9.332 34.897 20.537 32 26.55v15.882c0-.338.13.044.41.867 1.512 4.456 7.418 21.847 20.923 7.944 7.111-7.32 3.819-14.64-9.125-16.85 7.405 1.264 15.73-.825 18.014-9.015C62.88 23.022 64 8.51 64 6.55c0-9.818-8.578-6.732-13.873-2.745Z"
    />
  </svg>

let ytsubscription: t = props =>
  <svg
    className=?props.className
    xmlns="http://www.w3.org/2000/svg"
    fill="currentColor"
    height="24"
    viewBox="0 0 24 24"
    width="24"
    focusable="false"
    ariaHidden=true>
    <path
      clipRule="evenodd"
      d="M4 4.5A1.5 1.5 0 015.5 3h13A1.5 1.5 0 0120 4.5H4Zm16.5 3h-17v11h17v-11ZM3.5 6A1.5 1.5 0 002 7.5v11A1.5 1.5 0 003.5 20h17a1.5 1.5 0 001.5-1.5v-11A1.5 1.5 0 0020.5 6h-17Zm7.257 4.454a.5.5 0 00-.757.43v4.233a.5.5 0 00.757.429L15 13l-4.243-2.546Z"
      fillRule="evenodd"
    />
  </svg>

let ytshorts: t = props =>
  <svg
    className=?props.className
    xmlns="http://www.w3.org/2000/svg"
    fill="currentColor"
    height="24"
    viewBox="0 0 24 24"
    width="24"
    focusable="false"
    ariaHidden=true>
    <path
      clipRule="evenodd"
      d="m7.61 15.719.392-.22v-2.24l-.534-.228-.942-.404c-.869-.372-1.4-1.15-1.446-1.974-.047-.823.39-1.642 1.203-2.097h.001L15.13 3.59c1.231-.689 2.785-.27 3.466.833.652 1.058.313 2.452-.879 3.118l-1.327.743-.388.217v2.243l.53.227.942.404c.869.372 1.4 1.15 1.446 1.974.047.823-.39 1.642-1.203 2.097l-.002.001-8.845 4.964-.001.001c-1.231.688-2.784.269-3.465-.834-.652-1.058-.313-2.451.879-3.118l1.327-.742Zm1.993 6.002c-1.905 1.066-4.356.46-5.475-1.355-1.057-1.713-.548-3.89 1.117-5.025a4.14 4.14 0 01.305-.189l1.327-.742-.942-.404a4.055 4.055 0 01-.709-.391c-.963-.666-1.578-1.718-1.644-2.877-.08-1.422.679-2.77 1.968-3.49l8.847-4.966c1.905-1.066 4.356-.46 5.475 1.355 1.057 1.713.548 3.89-1.117 5.025a4.074 4.074 0 01-.305.19l-1.327.742.942.403c.253.109.49.24.709.392.963.666 1.578 1.717 1.644 2.876.08 1.423-.679 2.77-1.968 3.491l-8.847 4.965ZM10 14.567a.25.25 0 00.374.217l4.45-2.567a.25.25 0 000-.433l-4.45-2.567a.25.25 0 00-.374.216v5.134Z"
      fillRule="evenodd"
    />
  </svg>

let twitter: t = props =>
  <svg className=?props.className ariaHidden=true viewBox="0 0 24 24" width="1em" height="1em">
    <path
      d="M18.244 2.25h3.308l-7.227 8.26 8.502 11.24H16.17l-5.214-6.817L4.99 21.75H1.68l7.73-8.835L1.254 2.25H8.08l4.713 6.231zm-1.161 17.52h1.833L7.084 4.126H5.117z"
    />
  </svg>

let netflixAlt: t = props =>
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" className=?props.className>
    <defs />
    <path
      d="M29 25.75V5l8.4-.5v39L29 43M19 22.25V43l-8.4.5v-39h0L19 5M18.98 5l18.44 38.5M10.58 4.5 29.02 43"
      style={{fill: "none", stroke: "inherit", strokeLinecap: "round", strokeLinejoin: "round"}}
    />
  </svg>

let netflix: t = props =>
  <svg
    className=?props.className
    xmlns="http://www.w3.org/2000/svg"
    viewBox="0 -109.31 299.996 81.388">
    <path
      fill="inherit"
      d="M256.09-33.095c4.178.405 8.354.84 12.52 1.29l9.198-22.712 8.743 24.807c4.486.562 8.97 1.152 13.44 1.768l-15.328-43.501 15.333-37.864H287.01l-.135.186-8.283 20.455-7.272-20.638h-12.822l13.237 37.565-15.644 38.644zm-9.697-.89v-75.322h-12.817v74.265c4.275.33 8.552.684 12.817 1.056m-96.28-4.211c3.46 0 6.916.026 10.366.054v-27.672h15.397v-11.784H160.48v-19.91h17.733v-11.798h-30.6v71.12c.831 0 1.666-.013 2.5-.01m-39.794.72q6.404-.228 12.824-.384v-59.646h11.98v-11.797H98.339v11.797h11.982v60.03Zm-98.024 7.942V-74.41l15.176 43.063q6.999-.785 14.028-1.483v-76.476H29.201v46.483l-16.376-46.483H0v81.384h.077c4.063-.562 8.14-1.096 12.218-1.613M85.98-97.51v-11.796H55.377v75.201a1101 1101 0 0 1 30.578-2.211v-11.807q-8.874.518-17.71 1.181V-65.81h15.397v-11.791H68.245V-97.51Zm117.634 48.823v-60.623h-12.873v71.876c10.24.376 20.44.9 30.606 1.56v-11.814q-8.85-.57-17.733-1"
    />
  </svg>

let logo: t = props =>
  <svg
    className=?props.className
    xmlns="http://www.w3.org/2000/svg"
    width="1em"
    height="1em"
    viewBox="0 0 97.181 97.181">
    <path
      d="M57.716 19.102h97.181v97.181H57.716z"
      style={{
        fill: "none",
        fillRule: "evenodd",
        stroke: "none",
        strokeWidth: "0.321709",
      }}
      transform="translate(-57.716 -19.102)"
    />
    <path
      d="M106.306 28.933c-2.114 0-4.337 9.293-13.792 27.603H120.1c-9.455-18.31-11.678-27.603-13.793-27.603M91.723 58.087a290 290 0 0 1-5.72 10.408c-.648 1.123-1.274 2.171-1.904 3.232h44.414c-.63-1.06-1.255-2.109-1.904-3.232a290 290 0 0 1-5.72-10.408zm-8.539 15.191a270 270 0 0 1-8.771 13.64H138.2a270 270 0 0 1-8.771-13.64zM73.356 88.47c-19.218 27.63-18.373 15.191 32.95 15.191s52.169 12.44 32.95-15.19z"
      style={{
        fill: "inherit",
        fillRule: "evenodd",
        strokeWidth: "0.140076",
      }}
      transform="translate(-57.716 -19.102)"
    />
  </svg>
