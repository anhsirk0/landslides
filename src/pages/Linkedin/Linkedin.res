module Card = {
  @react.component
  let make = () => {
    <div className="route-card bg-[#0A66C2] text-white">
      <Icon.linkedin className="size-8 md:size-12 mr-2 fill-white" weight="fill" />
      {"Linkedin"->React.string}
    </div>
  }
}

@react.component
let make = () => {
  Hook.useDocTitle("Linkedin")

  let navlinks = Shape.Linkedin.navlinks->Array.map(item => {
    let active =
      item.title == "Home" ? "md:border-b-2 border-b-base-content" : "text-base-content/60"
    <div key=item.title className={`flex flex-col pb-1 w-12 md:w-20 items-center h-full ${active}`}>
      {React.createElement(item.icon, {className: "size-7 my-auto md:mb-none", weight: "fill"})}
      <p className="hidden md:block text-xs"> {item.title->React.string} </p>
    </div>
  })

  let trendings = Shape.Linkedin.trendings->Array.mapWithIndex((title, idx) => {
    <div key=title className="flex flex-col">
      <p title className="font-bold line-clamp-1"> {title->React.string} </p>
      <p className="text-sm text-base-content/80">
        {`${(idx + 1)->Int.toString} days ago •  1,234 readers`->React.string}
      </p>
    </div>
  })

  let posts = Shape.Linkedin.posts->Array.mapWithIndex((item, idx) => {
    <div key=item.title className="flex flex-col gap-2 grow bg-base-100 p-4 rounded-box">
      <div className="flex items-center -mt-2">
        <p className="text-sm text-base-content/60"> {"Suggested"->React.string} </p>
        <button className="btn btn-circle btn-sm btn-ghost ml-auto">
          <Icon.dotsThree className="size-4" weight="bold" />
        </button>
        <button className="btn btn-circle btn-sm btn-ghost">
          <Icon.x className="size-4" />
        </button>
      </div>
      <div className="divider -my-2" />
      <div className="flex gap-2 items-center">
        <div className="avatar placeholder">
          <div className="size-12 rounded-full p-1 bg-neutral text-neutral-content text-2xl">
            {item.author->String.charAt(0)->React.string}
          </div>
        </div>
        <div className="flex flex-col">
          <p className="font-bold"> {item.author->React.string} </p>
          <p className="text-sm text-base-content/80"> {item.authorInfo->React.string} </p>
        </div>
        <Icon.caretRight className="size-8 ml-auto" />
      </div>
      <p className="w-full"> {item.title->React.string} </p>
      <p className="w-full">
        {"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."->React.string}
      </p>
      <div className="flex">
        <div className="rounded-full bg-primary text-primary-content p-1 border border-base-100">
          <Icon.thumbsUp className="size-3" weight="fill" />
        </div>
        <div
          className="rounded-full bg-accent text-accent-content p-1 border border-base-100 -ml-2">
          <Icon.handsClapping className="size-3" weight="fill" />
        </div>
        <div
          className="rounded-full bg-secondary text-secondary-content p-1 border border-base-100 -ml-2">
          <Icon.handHeart className="size-3" weight="fill" />
        </div>
        <p className="text-base-content/80 ml-2">
          {((idx + 1) * 1000)->Int.toString->React.string}
        </p>
        <p className="text-base-content/80 ml-auto">
          {`${((idx + 1) * 100)->Int.toString} comments`->React.string}
        </p>
      </div>
      <div className="divider -my-2" />
      <div className="flex [&>button]:flex-1">
        <button className="btn btn-ghost">
          <Icon.thumbsUp className="size-5" />
          {"Like"->React.string}
        </button>
        <button className="btn btn-ghost">
          <Icon.chatCircleDots className="size-5" />
          {"Comment"->React.string}
        </button>
        <button className="btn btn-ghost">
          <Icon.repeat className="size-5" />
          {"Repost"->React.string}
        </button>
        <button className="btn btn-ghost">
          <Icon.paperPlaneTilt className="size-5" />
          {"Send"->React.string}
        </button>
      </div>
    </div>
  })

  <div className="size-full relative bg-base-300 min-h-0 overflow-y-auto">
    <nav className="sticky top-0 bg-base-100 p-0 px-2 z-10">
      <div className="flex max-w-6xl mx-auto justify-between w-full">
        <div className="flex gap-2 items-center">
          <Icon.linkedin className="size-14 fill-primary" weight="fill" />
          <label
            className="hidden md:flex input input-sm h-10 bg-base-300 items-center gap-2 w-full">
            <Icon.magnifyingGlass className="resp-icon" />
            <input className="grow" placeholder="Search" />
          </label>
        </div>
        <div className="flex gap-2 items-center"> {navlinks->React.array} </div>
      </div>
    </nav>
    <div className="max-w-6xl w-full py-4 px-2 mx-auto flex gap-4">
      <div className="hidden lg:flex flex-col gap-4 w-56 shrink-0">
        <div className="flex flex-col rounded-box overflow-hidden">
          <div className="h-20 bg-neutral w-full" />
          <div className="flex flex-col bg-base-100 p-4">
            <div className="avatar -mt-14">
              <div className="size-20 rounded-full p-1 bg-base-100">
                <img
                  alt="user"
                  src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp"
                  className="bg-neutral/50 rounded-full"
                />
              </div>
            </div>
            <p className="text-2xl font-bold"> {"User Name"->React.string} </p>
            <p className="text-base-content/80"> {"Some guy at company"->React.string} </p>
            <p className="text-base-content/60"> {"Somewhere on Earth"->React.string} </p>
          </div>
        </div>
        <div className="flex bg-base-100 p-4 rounded-box">
          <p className="font-bold w-full">
            {"Connections"->React.string}
            <br />
            <span className="text-sm text-base-content/60">
              {"Grow your network"->React.string}
            </span>
          </p>
          <p className="text-primary font-bold w-fit"> {"1B"->React.string} </p>
        </div>
      </div>
      <div className="flex flex-col gap-4 grow">
        <div className="flex flex-col items-center bg-base-100 p-4 rounded-box w-full gap-2">
          <div className="avatar">
            <div className="size-32 rounded-full p-1 bg-base-100">
              <img
                alt="user"
                src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp"
                className="bg-neutral/50 rounded-full"
              />
            </div>
          </div>
          <p className="font-bold text-2xl text-center">
            {"Hi User, are you hiring?"->React.string}
          </p>
          <p className="text-base-content/80 text-center">
            {"Discover free and easy ways to find a great hire, fast."->React.string}
          </p>
          <div className="flex gap-4 mx-auto mt-2">
            <button className="btn btn-sm btn-primary btn-outline btn-wide">
              {"Yes, I'm hiring"->React.string}
            </button>
            <button className="btn btn-sm btn-primary btn-outline btn-wide">
              {"No, not right now"->React.string}
            </button>
          </div>
        </div>
        <div className="flex flex-col bg-base-100 p-4 rounded-box w-full gap-4">
          <div className="flex items-center gap-4">
            <div className="avatar">
              <div className="size-16 rounded-full p-1 bg-base-100">
                <img
                  alt="user"
                  src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp"
                  className="bg-neutral/50 rounded-full"
                />
              </div>
            </div>
            <input placeholder="Start a post" className="input input-bordered w-full" />
          </div>
          <div className="flex items-center justify-between gap-4">
            <button className="btn btn-ghost">
              <Icon.image className="size-7 text-primary" weight="fill" />
              {"Media"->React.string}
            </button>
            <button className="btn btn-ghost">
              <Icon.chatTeardropText className="size-7 text-accent" weight="fill" />
              {"Contribute expertise"->React.string}
            </button>
            <button className="btn btn-ghost">
              <Icon.articleMedium className="size-7 text-secondary" weight="fill" />
              {"Write article"->React.string}
            </button>
          </div>
        </div>
        {posts->React.array}
      </div>
      <div className="hidden md:flex flex-col gap-4 w-72 shrink-0 h-fit">
        <div className="flex flex-col gap-2 grow bg-base-100 p-4 rounded-box">
          <p className="text-xl font-bold"> {"Trending Now"->React.string} </p>
          <p className="text-lg font-medium text-base-content/80 -mt-2">
            {"curated by LinkedIn News"->React.string}
          </p>
          {trendings->React.array}
          <button className="btn btn-sm w-fit">
            {"Show more"->React.string}
            <Icon.caretDown className="size-4" />
          </button>
          <p className="text-lg font-medium text-base-content/80 mt-2">
            {"Today's puzzle"->React.string}
          </p>
          <div className="flex gap-2 items-center">
            <Icon.gridFour className="size-14 text-accent" weight="duotone" />
            <div className="flex flex-col">
              <p className="font-bold"> {"Tango"->React.string} </p>
              <p className="text-sm text-base-content/80"> {"Harmonize the grid"->React.string} </p>
            </div>
            <Icon.caretRight className="size-8 ml-auto" />
          </div>
          <div className="flex gap-2 items-center">
            <Icon.squareSplitVertical className="size-14 text-secondary" weight="duotone" />
            <div className="flex flex-col">
              <p className="font-bold"> {"Pinpoint"->React.string} </p>
              <p className="text-sm text-base-content/80"> {"Guess the category"->React.string} </p>
            </div>
            <Icon.caretRight className="size-8 ml-auto" />
          </div>
        </div>
      </div>
    </div>
  </div>
}
