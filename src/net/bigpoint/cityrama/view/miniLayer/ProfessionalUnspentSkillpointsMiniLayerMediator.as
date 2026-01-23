package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ProfessionalUnspentSkillpointsMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ProfessionalUnspentSkillpointsMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ProfessionalUnspentSkillpointsMiniLayerMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "ProfessionalUnspentSkillpointsMiniLayerMediator";
      }
      
      private var _soundProxy:SoundProxy;
      
      public function ProfessionalUnspentSkillpointsMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param1))
         {
            super(param1,param2);
            if(_loc4_)
            {
               addr003c:
               this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
            }
            return;
         }
         §§goto(addr003c);
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.component);
            if(_loc2_ || _loc2_)
            {
               §§pop().acceptButton.addEventListener(MouseEvent.CLICK,this.handleButtonClick);
               if(!(_loc1_ && Boolean(this)))
               {
                  addr004f:
                  this.component.addEventListener(Event.CLOSE,this.finalCall);
                  addr004c:
               }
               return;
            }
            §§goto(addr004f);
         }
         §§goto(addr004c);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            §§push(this.component);
            if(!_loc2_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.finalCall);
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr005d);
               }
               §§goto(addr0079);
            }
            addr005d:
            this.component.acceptButton.removeEventListener(MouseEvent.CLICK,this.handleButtonClick);
            if(_loc3_ || _loc2_)
            {
               addr0079:
               facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
            }
            return;
         }
         §§goto(addr0079);
      }
      
      private function handleButtonClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._soundProxy.playButtonClick();
            if(_loc3_ || Boolean(this))
            {
               this.finalCall();
            }
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super.onRemove();
            if(_loc1_)
            {
               addr0031:
               this.component.acceptButton.removeEventListener(MouseEvent.CLICK,this.handleButtonClick);
            }
            return;
         }
         §§goto(addr0031);
      }
      
      public function get component() : ProfessionalUnspentSkillpointsMiniLayer
      {
         return super.viewComponent as ProfessionalUnspentSkillpointsMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
      }
   }
}

