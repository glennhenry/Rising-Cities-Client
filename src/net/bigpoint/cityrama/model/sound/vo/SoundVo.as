package net.bigpoint.cityrama.model.sound.vo
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   
   public class SoundVo
   {
      
      public var sound:Sound;
      
      public var channel:SoundChannel;
      
      public var loop:Boolean;
      
      public var type:String;
      
      public function SoundVo()
      {
         super();
      }
   }
}

