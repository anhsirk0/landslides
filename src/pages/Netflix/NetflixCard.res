@react.component
let make = () => {
  <div className="w-full h-full bg-[#D9232E] center p-4 xxl:p-6 text-3xl text-black font-bold">
    <Icon.netflixAlt className="size-12 mr-2 stroke-black fill-black" />
    {"Netflix"->React.string}
  </div>
}
