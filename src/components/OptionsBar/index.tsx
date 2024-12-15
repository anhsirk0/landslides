import { FC, Fragment, useState, useEffect } from "react";

// icons imports
import { IconArrowDown } from "@tabler/icons-react";

// other imports
import { Link, useLocation } from "react-router-dom";

import { cn } from "@/helpers";
import { Logo } from "@/components";
import SelectTheme from "./SelectTheme";

const OptionsBar: FC = () => {
  const [open, setOpen] = useState(false);
  const location = useLocation();

  useEffect(() => {
    if (location.pathname === "/") setOpen(true);
  }, [location]);

  return (
    <Fragment>
      <button
        onClick={() => setOpen(!open)}
        className={cn(
          "fixed rounded-btn bg-accent left-[50vw] h-10 w-10 rotate-45 transition-all ease-in-out duration-300 z-50 center",
          open ? "bottom-10" : "-bottom-6"
        )}
      >
        {open && (
          <IconArrowDown className="text-accent-content -rotate-45" size={28} />
        )}
      </button>
      <div
        className={cn(
          "transition-all ease-in-out duration-300 fixed w-screen bg-accent",
          open ? "bottom-0" : "-bottom-16"
        )}
      >
        <div className="w-full h-16 flex flex-row">
          <div className="navbar">
            <div className="navbar-start">
              <Link
                to="/"
                className="btn btn-sm xxl:btn-md btn-primary option-btn xxl:text-xl"
              >
                <Logo className="fill-primary-content" />
                Landslides
              </Link>
            </div>
            <div className="navbar-end space-x-4">
              {/* <a
                  href="https://github.com/anhsirk0/landslides"
                  target="_blank"
                  className="btn btn-sm xxl:btn-md btn-primary option-btn xxl:text-xl"
                  >
                  Source Code
                  </a> */}

              <SelectTheme />
            </div>
          </div>
        </div>
      </div>
    </Fragment>
  );
};

export default OptionsBar;
