@react.component
let make = () => {
  Hook.useDocTitle("Bluesky")

  let posts = Shape.Bluesky.all->Array.mapWithIndex((item, idx) => {
    let borderTop = idx == 0 ? "" : "border-t border-base-content/20"

    <div className={`flex flex-row gap-4 p-4 w-full ${borderTop}`} key={idx->Int.toString}>
      <div className="avatar placeholder size-12">
        <div className="w-full rounded-full bg-neutral text-neutral-content text-xl font-bold">
          {item.name->Utils.toAvatar->React.string}
        </div>
      </div>
      <div className="flex flex-col gap-2 grow">
        <div className="flex flex-row gap-2 items-center">
          <p className="font-bold"> {item.name->React.string} </p>
          <p className="font-medium text-base-content/60">
            {`@${item.username}.bsky.social • 6h`->React.string}
          </p>
        </div>
        <p> {item.text->React.string} </p>
        {switch item.image {
        | Some(image) => <img className="rounded-box bg-neutral/20 w-full h-[240px]" src=image />
        | None => React.null
        }}
        <div className="flex flex-row items-center">
          <div className="flex-1 flex flex-row gap-2 text-base-content/60">
            <Icon.chat className="resp-icon" />
            {"7B"->React.string}
          </div>
          <div className="flex-1 flex flex-row gap-2 text-base-content/60">
            <Icon.repeat className="resp-icon" />
            {"3.5B"->React.string}
          </div>
          <div className="flex-1 flex flex-row gap-2 text-base-content/60">
            <Icon.heart className="resp-icon" />
            {"2B"->React.string}
          </div>
          <div className="flex-1 flex flex-row gap-2 text-base-content/60">
            <Icon.dotsThree className="resp-icon" />
          </div>
        </div>
      </div>
    </div>
  })

  <div id="bluesky" className="drawer lg:drawer-open min-h-0 h-full">
    <input id="bluesky-drawer" type_="checkbox" className="drawer-toggle" />
    <div className="drawer-content flex flex-row min-h-0 isolate">
      <div
        className="flex flex-col border-x border-base-content/20 bluesky-content mx-auto min-h-0">
        <div
          className="sticky top-0 z-10 flex resp-gap items-center px-2 bg-base-100 h-12 lg:hidden">
          <label htmlFor="bluesky-drawer" className="btn btn-square btn-ghost btn-sm lg:hidden">
            <Icon.menu className="size-6" />
          </label>
          <div className="mx-auto">
            <Icon.bluesky className="w-auto h-full fill-primary" />
          </div>
          <div className="size-8" />
        </div>
        <div className="flex flex-row gap-2 justify-between border-b border-base-content/20">
          <div className="flex-1 center">
            <div className="mt-2">
              <p className="text-lg text-center font-bold"> {"Discover"->React.string} </p>
              <div className="bg-primary h-1 mt-1.5 w-full" />
            </div>
          </div>
          <div className="flex-1 center">
            <div className="mt-2">
              <p className="text-lg text-center font-bold text-base-content/60 inline-flex">
                {"Feeds"->React.string}
                <Icon.sparkle className="size-5 ml-1 text-accent" weight="fill" />
              </p>
              <div className="h-1 mt-1.5 w-full" />
            </div>
          </div>
        </div>
        <div className="flex flex-col min-h-0 overflow-y-auto"> {posts->React.array} </div>
      </div>
      <div className="p-4 hidden xl:flex bluesky-panel">
        <flex className="flex-col w-72">
          <label className="input bg-base-200/80 flex items-center gap-2 ">
            <Icon.magnifyingGlass className="resp-icon" />
            <input className="grow" placeholder="Search" />
          </label>
          <div className="flex flex-row gap-1 pt-4 items-center [&>a]:text-primary">
            <a className="link link-hover text-sm" href="#"> {"Privacy"->React.string} </a>
            <span> {"•"->React.string} </span>
            <a className="link link-hover text-sm" href="#"> {"Terms"->React.string} </a>
            <span> {"•"->React.string} </span>
            <a className="link link-hover text-sm" href="#"> {"Help"->React.string} </a>
          </div>
        </flex>
      </div>
    </div>
    <div className="drawer-side isolate">
      <label htmlFor="bluesky-drawer" ariaLabel="close sidebar" className="drawer-overlay" />
      <div className="lg:hidden xl:flex lg:bluesky-panel h-full flex-col bg-base-100 items-end">
        <div className="flex flex-col p-4 resp-gap w-72">
          <Icon.bluesky className="size-12 fill-primary" />
          <p className="font-black text-3xl"> {"Join the conversation"->React.string} </p>
          <div className="flex flex-row gap-4">
            <button className="btn btn-primary"> {"Sign Up"->React.string} </button>
            <button className="btn btn-ghost bg-base-200"> {"Sign In"->React.string} </button>
          </div>
        </div>
      </div>
    </div>
    <div
      className="fixed bottom-0 left-0 h-16 w-full bg-base-100 xl:hidden flex gap-4 p-4 items-center border-t border-base-content/20">
      <Icon.bluesky className="w-auto h-full fill-primary" />
      <p className="font-black text-3xl"> {"Bluesky"->React.string} </p>
      <div className="grow" />
      <button className="btn btn-primary"> {"Sign Up"->React.string} </button>
      <button className="btn btn-ghost bg-base-200"> {"Sign In"->React.string} </button>
    </div>
  </div>
}
