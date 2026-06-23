# Customer Feedback Section - Implementation Guide

## Overview
The customer feedback section has been added to your website with three tabs:
1. **Testimonials** - Customer reviews with ratings
2. **Installations** - Before/after installation photos
3. **Videos** - Auto-playing video testimonials and demos

## How to Add Content

### Adding a Testimonial
Open the browser console or add this code to your page:

```javascript
addTestimonial(
    "Customer Name",           // Name
    "Location/City",           // Location
    "Their testimonial text",  // Review text
    5,                         // Rating (1-5 stars)
    "path/to/avatar.jpg"       // Avatar image URL
);
```

**Example:**
```javascript
addTestimonial(
    "John Mwangi",
    "Nairobi, Kenya",
    "The water pump system is reliable and efficient. Installation was smooth and the customer service is excellent!",
    5,
    "./testimonials/john-avatar.jpg"
);
```

### Adding an Installation Story
```javascript
addInstallation(
    "Project Title",           // Title of the installation
    "Location",               // Installation location
    "Description of the project", // Project details
    "Results achieved",       // Results/benefits
    "path/to/before.jpg",    // Before photo
    "path/to/after.jpg"      // After photo
);
```

**Example:**
```javascript
addInstallation(
    "Farm Water System Upgrade",
    "Kiambu County",
    "Installed a 3HP submersible pump with solar panels for a 50-acre farm",
    "Increased water flow by 300%, reduced electricity costs by 80%",
    "./installations/farm-before.jpg",
    "./installations/farm-after.jpg"
);
```

### Adding a Video
```javascript
addVideo(
    "Video Title",           // Title of the video
    "Video description",     // Description
    "Customer Name",         // Customer/creator name
    "path/to/video.mp4"     // Video file URL
);
```

**Example:**
```javascript
addVideo(
    "Installation Process",
    "Watch how we installed the water pump system in just 2 hours",
    "Smart Water Pump KE",
    "./videos/installation-demo.mp4"
);
```

## File Organization

### Recommended folder structure:
```
smart-water-pump-website/
├── testimonials/
│   ├── avatar1.jpg
│   ├── avatar2.jpg
│   └── avatar3.jpg
├── installations/
│   ├── project1-before.jpg
│   ├── project1-after.jpg
│   ├── project2-before.jpg
│   └── project2-after.jpg
└── videos/
    ├── testimonial1.mp4
    ├── testimonial2.mp4
    ├── installation-demo.mp4
    └── maintenance-guide.mp4
```

## Adding Content Programmatically

You can also add content directly in the HTML by modifying the JavaScript section. Add this code in the `DOMContentLoaded` event:

```javascript
document.addEventListener('DOMContentLoaded', () => {
    // Add testimonials
    addTestimonial("John Doe", "Nairobi", "Great service!", 5, "./testimonials/john.jpg");
    addTestimonial("Jane Smith", "Mombasa", "Highly recommended", 5, "./testimonials/jane.jpg");
    
    // Add installations
    addInstallation("Farm Project", "Kiambu", "Solar pump system", "300% more water", "./installations/farm-before.jpg", "./installations/farm-after.jpg");
    
    // Add videos
    addVideo("Demo", "Installation demo", "Smart Water Pump", "./videos/demo.mp4");
    
    // Render all content
    renderTestimonials();
    renderInstallations();
    renderVideos();
});
```

## Video Requirements

### Supported Formats
- MP4 (recommended)
- WebM
- Ogg

### Video Specifications
- Resolution: 1280x720 (720p) or higher
- Bitrate: 2-5 Mbps for optimal quality
- Duration: 15-60 seconds recommended
- File size: Keep under 50MB for faster loading

### Auto-play Features
- Videos auto-play on load
- Muted by default (browser requirement)
- Loop continuously
- Responsive to all screen sizes

## Image Requirements

### Avatar Images (Testimonials)
- Size: 60x60 pixels (will be circular)
- Format: JPG or PNG
- File size: Under 50KB

### Installation Photos
- Size: 1200x800 pixels or larger
- Format: JPG (recommended for compression)
- File size: Under 200KB each
- Quality: High resolution for professional appearance

### Video Thumbnails
- Automatically generated from video
- Size: 300x169 pixels (16:9 aspect ratio)
- Format: Auto-generated

## Browser Compatibility

| Feature | Chrome | Firefox | Safari | Edge |
|---------|--------|---------|--------|------|
| Auto-play video | ✅ | ✅ | ✅ | ✅ |
| Responsive grid | ✅ | ✅ | ✅ | ✅ |
| Animations | ✅ | ✅ | ✅ | ✅ |
| Tab switching | ✅ | ✅ | ✅ | ✅ |

## Performance Tips

1. **Compress images** before uploading (use online tools or ImageMagick)
2. **Optimize videos** to reduce file size without losing quality
3. **Use relative paths** for all media files (e.g., `./videos/demo.mp4`)
4. **Lazy load** videos if you have many (videos load only when tab is clicked)
5. **Test on mobile** to ensure smooth playback

## Troubleshooting

### Videos not playing
- Check file format is MP4
- Verify file path is correct
- Ensure CORS headers are set if hosting on different domain
- Try converting to H.264 codec

### Images not showing
- Check file path is correct
- Verify image format (JPG/PNG)
- Ensure file size is reasonable
- Check file permissions

### Layout issues
- Clear browser cache (Ctrl+Shift+Delete)
- Check responsive design on mobile
- Verify CSS is loading correctly

## Next Steps

1. **Upload your first testimonial** - Start with a customer review
2. **Add installation photos** - Show before/after of your work
3. **Record a video** - Create a short testimonial or demo video
4. **Monitor engagement** - Track which content gets the most views
5. **Update regularly** - Add new content monthly to keep site fresh

## Support

For questions or issues, contact: smartwaterpumpke@gmail.com
