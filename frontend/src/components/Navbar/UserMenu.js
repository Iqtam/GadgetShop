import * as React from "react";
import Box from "@mui/material/Box";
import Avatar from "@mui/material/Avatar";
import Menu from "@mui/material/Menu";
import MenuItem from "@mui/material/MenuItem";
import ListItemIcon from "@mui/material/ListItemIcon";
import Divider from "@mui/material/Divider";
import IconButton from "@mui/material/IconButton";
import Typography from "@mui/material/Typography";
import Tooltip from "@mui/material/Tooltip";
// import PersonAdd from '@mui/icons-material/PersonAdd';
import Settings from "@mui/icons-material/Settings";
import Logout from "@mui/icons-material/Logout";
import "./Navbar.scss";
import { Navigate } from "react-router-dom";
import { Link } from "react-router-dom";
import { deepOrange, deepPurple } from "@mui/material/colors";
import { selectUserInfo } from "../../store/userSlice";
import { useSelector } from "react-redux";
export default function AccountMenu() {
  const userInfo = useSelector(selectUserInfo);
  const [anchorEl, setAnchorEl] = React.useState(null);
  console.log(userInfo);
  const open = Boolean(anchorEl);
  const handleClick = (event) => {
    setAnchorEl(event.currentTarget);
  };
  const handleClose = () => {
    setAnchorEl(null);
  };

  return (
    <React.Fragment>
      <Box sx={{ display: "flex", alignItems: "center", textAlign: "center" }}>
        <Tooltip title="Account settings" sx={{ fontSize: 32 }}>
          <IconButton
            onClick={handleClick}
            size="small"
            sx={{ ml: 2 }}
            aria-controls={open ? "account-menu" : undefined}
            aria-haspopup="true"
            aria-expanded={open ? "true" : undefined}
          >
            <Avatar
              sx={{ width: 32, height: 32, bgcolor: deepOrange[500] }}
            ></Avatar>
          </IconButton>
        </Tooltip>
      </Box>
      <Menu
        anchorEl={anchorEl}
        id="account-menu"
        open={open}
        onClose={handleClose}
        onClick={handleClose}
        PaperProps={{
          elevation: 0,
          sx: {
            overflow: "visible",
            filter: "drop-shadow(0px 2px 8px rgba(0,0,0,0.32))",
            mt: 1.5,
            "& .MuiAvatar-root": {
              width: 32,
              height: 32,
              ml: -0.5,
              mr: 1,
            },
            "&:before": {
              content: '""',
              display: "block",
              position: "absolute",
              top: 0,
              right: 14,
              width: 10,
              height: 10,
              bgcolor: "background.paper",
              transform: "translateY(-50%) rotate(45deg)",
              zIndex: 0,
            },
          },
        }}
        transformOrigin={{ horizontal: "right", vertical: "top" }}
        anchorOrigin={{ horizontal: "right", vertical: "bottom" }}
      >
        <div className="navbar-user-profile">
          <MenuItem onClick={handleClose}>
            <Avatar />
            {userInfo.role === "customer" ? (
              <Link to="/customer/my-profile">
                <Typography
                  variant="body1"
                  sx={{
                    fontSize: 16,
                    marginLeft: 2,
                  }}
                >
                  My Profile
                </Typography>
              </Link>
            ) : userInfo.role === "supplier" ? (
              <Link to="/supplier/my-profile">
                <Typography
                  variant="body1"
                  sx={{
                    fontSize: 16,
                    marginLeft: 2,
                  }}
                >
                  My Profile
                </Typography>
              </Link>
            ) : null}
          </MenuItem>
          <MenuItem onClick={handleClose}>
            <Avatar />
            {userInfo.role === "customer" ? (
              <Link to="/customer/my-orders">
                <Typography
                  variant="body1"
                  sx={{
                    fontSize: 16,
                    marginLeft: 2,
                  }}
                >
                  My Orders
                </Typography>
              </Link>
            ) : userInfo.role === "supplier" ? (
              <Link to="/supplier/my-orders">
                <Typography
                  variant="body1"
                  sx={{
                    fontSize: 16,
                    marginLeft: 2,
                  }}
                >
                  My Orders
                </Typography>
              </Link>
            ) : null}
            
          </MenuItem>
          <MenuItem onClick={handleClose}>
            <Avatar />
            {userInfo.role === "customer" ? (
              <Link to="/customer/my-reviews">
                <Typography
                  variant="body1"
                  sx={{
                    fontSize: 16,
                    marginLeft: 2,
                  }}
                >
                  My Reviews
                </Typography>
              </Link>
            ) : userInfo.role === "supplier" ? (
              <Link to="/supplier/my-products">
                <Typography
                  variant="body1"
                  sx={{
                    fontSize: 16,
                    marginLeft: 2,
                  }}
                >
                  My Products
                </Typography>
              </Link>
            ) : null}
            
          </MenuItem>
          <Divider />
          {userInfo && (
            <MenuItem onClick={handleClose}>
              <ListItemIcon>
                <Logout fontSize="small" />
              </ListItemIcon>
              <Link to="/signout">
              <Typography
                variant="body1" // Adjust the variant as needed
                sx={{
                  fontSize: 16, // Adjust the font size as needed
                  marginLeft: 2, // Optional: Add some left margin for spacing
                }}
              >
                Logout
              </Typography>
              </Link>
            </MenuItem>
          )}
        </div>
      </Menu>
    </React.Fragment>
  );
}
