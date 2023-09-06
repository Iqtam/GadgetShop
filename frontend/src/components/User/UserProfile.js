import React from "react";
import {
  Container,
  Grid,
  Paper,
  Typography,
  Button,
  TextField,
  List,
  ListItem,
  ListItemButton,
  ListItemText,
} from "@mui/material";
import { Edit } from "@mui/icons-material";
import styles from "./UserProfile.module.scss"; // You can create this CSS file for custom styling

function UserProfile() {
  const user = {
    NAME: "John Doe", // Replace with the actual user data
    DOB: "1990-01-01", // Replace with the actual user data
  };
  const textFieldStyle = {
    color: "black", // Set the text color to black
    marginBottom: "16px",
  };
  return (
    <div className={styles.maincontent}>
      <Container>
        <Grid container spacing={3}>
          <Grid item xs={3}>
            <Paper elevation={3} className={styles.profilesidebar}>
              <Grid container spacing={2}>
                <Grid item xs={3}></Grid>
                <Grid item xs={9}>
                  <Typography
                    variant="body1"
                    sx={{
                      fontSize: 20,
                    }}
                  >
                    Hello
                  </Typography>
                  <Typography
                    variant="h5"
                    sx={{
                      fontSize: 30, 
                    }}
                  >
                    Name
                  </Typography>
                </Grid>
              </Grid>
              <div className={styles.profilesidebar}>
                <List component="nav" sx={{
                      fontSize: 30, 
                    }}>
                <ListItemButton>
                    <ListItemText   sx={{
                      fontSize: 30, 
                    }}>My Account</ListItemText>
                  </ListItemButton>
                  <ListItemButton>
                    <ListItemText primary="My Orders" />
                  </ListItemButton>
                  <ListItemButton>
                    <ListItemText primary="My Lists" />
                    </ListItemButton>
                  <ListItemButton>
                    <ListItemText primary="My Wishlist" />
                    </ListItemButton>
                  <ListItemButton>
                    <ListItemText primary="My Ratings and Reviews" />
                    </ListItemButton>
                </List>
              </div>
            </Paper>
          </Grid>
          <Grid item xs={9}>
            <Paper elevation={3} className={styles.profilecontent}>
              <div className={styles.profileheader}>
                <Typography variant="h3">Profile</Typography>
                <Button
                  variant="outlined"
                  startIcon={<Edit />}
                  className="edit-profile-button"
                >
                  Edit Profile
                </Button>
              </div>
              <section className={styles.profilesection}>
                <Typography variant="h4">Personal Information</Typography>
                <hr />
                <Grid container spacing={3}>
                  <Grid item xs={12} sm={6}>
                    <TextField
                      required
                      fullWidth
                      label="Name"
                      value={user.NAME}
                      variant="outlined"
                      InputProps={{
                        style: textFieldStyle, // Apply the custom style here
                      }}
                    />
                  </Grid>
                  <Grid item xs={12} sm={6}>
                    <TextField
                      type="date"
                      fullWidth
                      label="Your Date of Birth"
                      value={user.DOB}
                      variant="outlined"
                      InputProps={{
                        style: textFieldStyle, // Apply the custom style here
                      }}
                    />
                  </Grid>
                </Grid>
              </section>
              <section className={styles.profilesection}>
                <Typography variant="h4">Contact Information</Typography>
                <hr />
                <form>
                  <Grid container spacing={3}>
                    <Grid item xs={6}>
                      <TextField
                        //   disabled
                        fullWidth
                        label="Phone Number"
                        value=""
                        variant="outlined"
                      />
                    </Grid>
                    <Grid item xs={6}>
                      <TextField
                        //   disabled
                        fullWidth
                        type="email"
                        label="Email address"
                        value=""
                        variant="outlined"
                      />
                    </Grid>
                  </Grid>
                </form>
              </section>
              <section className={styles.profilesection}>
                <Typography variant="h4">Profile Picture</Typography>
                <hr />
                <form>
                  <Grid container spacing={3}>
                    <Grid item xs={2}>
                      <img
                        className="img-fluid circular"
                        src=""
                        alt="User Profile"
                      />
                    </Grid>
                    <Grid item xs={6}>
                      <TextField
                        disabled
                        fullWidth
                        label="Link"
                        value=""
                        variant="outlined"
                      />
                    </Grid>
                  </Grid>
                </form>
              </section>
            </Paper>
          </Grid>
        </Grid>
      </Container>
    </div>
  );
}

export default UserProfile;
