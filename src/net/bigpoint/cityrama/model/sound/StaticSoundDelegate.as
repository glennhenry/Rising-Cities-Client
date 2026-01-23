package net.bigpoint.cityrama.model.sound
{
   import org.puremvc.as3.patterns.facade.Facade;
   
   public class StaticSoundDelegate
   {
      
      public static const BUTTON_CLICK:String = "BTNCLICK";
      
      public static const OPEN_POPUP:String = "OPEN_POPUP";
      
      public static const RC_SPEND:String = "RC_SPEND";
      
      public static const DEXTRO_SPEND:String = "DEXTRO_SPEND";
      
      public function StaticSoundDelegate()
      {
         super();
      }
      
      public static function playSound(param1:String) : void
      {
         var _loc2_:SoundProxy = Facade.getInstance().retrieveProxy(SoundProxy.NAME) as SoundProxy;
         switch(param1)
         {
            case BUTTON_CLICK:
            case OPEN_POPUP:
               _loc2_.playButtonClick();
               break;
            case RC_SPEND:
            case DEXTRO_SPEND:
               _loc2_.playRCSpend();
         }
         _loc2_ = null;
      }
   }
}

