import { useEffect } from "react";

// icons imports
import { IconColorSwatch } from "@tabler/icons-react";

// local imports
import { themes } from "@/config";

const KEY = "landslide-theme";
function applyTheme(theme: string) {
  localStorage.setItem(KEY, theme);
  const html = document.querySelector("html");
  if (html) html.setAttribute("data-theme", theme);
}

const SelectTheme = () => {
  useEffect(() => {
    applyTheme(localStorage.getItem(KEY) || "cupcake");
  }, []);

  return (
    <div className="dropdown dropdown-top dropdown-end">
      <div
        role="button"
        tabIndex={0}
        className="btn btn-sm xxl:btn-md xxl:px-3 btn-primary option-btn xxl:text-xl"
      >
        Theme
        <IconColorSwatch />
      </div>
      <ul className="dropdown-content z-[1] flex flex-col gap-2 p-4 bg-accent rounded-box h-96 min-h-0 overflow-y-auto mb-4 w-56 shadow-xl">
        {themes.map((theme) => (
          <li
            key={theme}
            className="btn h-10 justify-between w-full"
            onClick={() => applyTheme(theme)}
            data-theme={theme}
            tabIndex={0}
          >
            {theme}
            <div className="flex flex-row gap-1 rounded-btn [&>div]:h-6 [&>div]:w-2 [&>div]:rounded-xl">
              <div className="bg-primary" />
              <div className="bg-accent" />
              <div className="bg-secondary" />
              <div className="bg-neutral" />
            </div>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default SelectTheme;
