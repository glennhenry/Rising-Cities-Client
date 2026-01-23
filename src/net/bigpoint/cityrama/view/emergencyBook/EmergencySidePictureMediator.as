package net.bigpoint.cityrama.view.emergencyBook
{
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EmergencySidePictureMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "EmergencySidePictureMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "EmergencySidePictureMediator";
      }
      
      public function EmergencySidePictureMediator(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super(NAME,param1);
         }
      }
      
      override public function getMediatorName() : String
      {
         return EmergencySidePictureMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:* = param1.getName();
         switch(0)
         {
         }
      }
   }
}

