module Card = {
  @react.component
  let make = () => {
    <div className="route-card bg-secondary text-secondary-content">
      <Icon.google className="size-8 md:size-12 mr-2 fill-secondary-content" />
      {"Google"->React.string}
    </div>
  }
}

@react.component
let make = () => {
  Hook.useDocTitle("Google")

  <div className="size-full center relative p-4">
    <div className="flex gap-4 absolute top-2 left-4 items-center h-12">
      <button className="link link-hover"> {"About"->React.string} </button>
      <button className="link link-hover"> {"Store"->React.string} </button>
    </div>
    <div className="flex gap-4 absolute top-2 right-4 items-center">
      <button className="link link-hover"> {"Gmail"->React.string} </button>
      <button className="link link-hover"> {"Images"->React.string} </button>
      <button className="btn btn-circle btn-ghost">
        <Icon.dotsNine className="resp-icon" weight="bold" />
      </button>
      <div className="avatar">
        <div className="size-8 xxl:size-10 rounded-full">
          <img
            alt="user"
            src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp"
            className="bg-neutral/50"
          />
        </div>
      </div>
    </div>
    <div className="flex flex-col gap-8 items-center max-w-xl w-full">
      <p className="text-7xl font-bold"> {"Google"->React.string} </p>
      <label className="input bg-base-content/20 flex items-center gap-2 w-full">
        <Icon.magnifyingGlass className="resp-icon" />
        <input className="grow" />
      </label>
      <div className="flex gap-4">
        <button className="btn resp-btn btn-neutral"> {"Google Search"->React.string} </button>
        <button className="btn resp-btn btn-neutral"> {"I'm Feeling Lucky"->React.string} </button>
      </div>
    </div>
    <div
      className="flex flex-col md:flex-row gap-2 absolute bottom-0 left-0 items-center p-2 xl:p-4 bg-neutral/50 w-full md:justify-between">
      <div className="flex gap-4 text-sm">
        <button className="link link-hover"> {"Advertising"->React.string} </button>
        <button className="link link-hover"> {"Business"->React.string} </button>
        <button className="link link-hover"> {"How Search Works"->React.string} </button>
      </div>
      <div className="flex gap-4 text-sm">
        <button className="link link-hover"> {"Privacy"->React.string} </button>
        <button className="link link-hover"> {"Terms"->React.string} </button>
        <button className="link link-hover"> {"Settings"->React.string} </button>
      </div>
    </div>
  </div>
}
