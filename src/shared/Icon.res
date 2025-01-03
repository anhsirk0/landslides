type props = {className?: string, weight?: string}
type t = React.component<props>

@module("@phosphor-icons/react") external palette: t = "Palette"
@module("@phosphor-icons/react") external sparkle: t = "Sparkle"
@module("@phosphor-icons/react") external caretLeft: t = "CaretLeft"
@module("@phosphor-icons/react") external caretRight: t = "CaretRight"
@module("@phosphor-icons/react") external arrowDown: t = "ArrowDown"
@module("@phosphor-icons/react") external television: t = "Television"
@module("@phosphor-icons/react") external download: t = "CloudArrowDown"
@module("@phosphor-icons/react") external baby: t = "Baby"
@module("@phosphor-icons/react") external binoculars: t = "Binoculars"
@module("@phosphor-icons/react") external house: t = "House"
@module("@phosphor-icons/react") external magnifyingGlass: t = "MagnifyingGlass"
@module("@phosphor-icons/react") external globe: t = "Globe"
@module("@phosphor-icons/react") external plus: t = "Plus"
@module("@phosphor-icons/react") external play: t = "Play"
@module("@phosphor-icons/react") external playlist: t = "Playlist"
@module("@phosphor-icons/react") external spotify: t = "SpotifyLogo"
@module("@phosphor-icons/react") external google: t = "GoogleLogo"
@module("@phosphor-icons/react") external apple: t = "AppleLogo"

let twitter: t = props =>
  <svg className=?props.className ariaHidden=true viewBox="0 0 24 24" width="1em" height="1em">
    <path
      d="M18.244 2.25h3.308l-7.227 8.26 8.502 11.24H16.17l-5.214-6.817L4.99 21.75H1.68l7.73-8.835L1.254 2.25H8.08l4.713 6.231zm-1.161 17.52h1.833L7.084 4.126H5.117z"
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
