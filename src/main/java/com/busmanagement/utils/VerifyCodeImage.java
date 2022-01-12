package com.busmanagement.utils;


import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

//只负责生成验证码和验证码图片,作为一个工具类,不和servet混一起
public class VerifyCodeImage {
    private int width = 60;
    private int height = 20;
    //图片对象
    private BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
    //图片对象的上下文,对图片的操作是在这个上下文进行的
    private Graphics g = image.getGraphics();
    //验证码
    private char[] code = new char[4];
    //image的比特数组
    private byte[] imageBuff;

    public VerifyCodeImage() throws IOException {
        generateverifyCode();
        drawBackGround(g);
        drawCode(g,code);
        g.dispose();//结束绘图,结束上下文
        //图像转换为字节流
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ImageIO.write(image, "JPEG", baos);
        imageBuff = baos.toByteArray();
        baos.close();
    }

    public char[] getCode() {
        return code;
    }

    public byte[] getImageBuff() {
        return imageBuff;
    }

    //生成随机的4个验证码
    private void generateverifyCode(){
        String chars = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
        for(int i=0;i<4;i++){
            int index = (int)(Math.random() * 62);  //最大下标是61,所以最后一个也能取到
            code[i] = chars.charAt(index);
        }
    }
    //把验证码画入上下文
    private void drawCode(Graphics g, char[] code){
        int red = (int)(Math.random()*255);
        int green = (int)(Math.random()*255);
        int blue = (int)(Math.random()*255);
        g.setColor(new Color(red,green,blue));//每次操作上下文前都要设置颜色
        g.setFont(new Font(null,Font.ITALIC | Font.BOLD, 18));//设置字体
        //在不同坐标上画入字符
        g.drawString(""+code[0], 1, 17);  //x,y坐标
        red = (int)(Math.random()*255);
        green = (int)(Math.random()*255);
        blue = (int)(Math.random()*255);
        g.setColor(new Color(red,green,blue));
        g.drawString(""+code[1], 16, 15);
        red = (int)(Math.random()*255);
        green = (int)(Math.random()*255);
        blue = (int)(Math.random()*255);
        g.setColor(new Color(red,green,blue));
        g.drawString(""+code[2], 31, 18);
        red = (int)(Math.random()*255);
        green = (int)(Math.random()*255);
        blue = (int)(Math.random()*255);
        g.setColor(new Color(red,green,blue));
        g.drawString(""+code[3], 46, 16);
    }
    //图像产生点干扰
    private void drawBackGround(Graphics g){
        g.setColor(new Color(220, 237, 255));//自定义颜色需要new Color()
        g.fillRect(0,0,width,height);//填充指定位置
        //随机产生120个干扰点
        for(int i=0;i<120;i++){
            int x = (int)(Math.random()*width);
            int y = (int)(Math.random()*height);
            int red = (int)(Math.random()*255);
            int green = (int)(Math.random()*255);
            int blue = (int)(Math.random()*255);
            g.setColor(new Color(red,green,blue));
            g.drawOval(x,y,1,0);//绘制椭圆形轮廓
        }
    }



    public static void main(String[] args) throws IOException {
//        VerifyCodeImage code = new VerifyCodeImage();
//        System.out.println(code.getCode());
//        System.out.println(code.getImageBuff());
    }
}
