package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.miniLayer.EmergencyMiniLayerProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyRehireProfessionalMiniLayerVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.EmergencyRehireProfessionalMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EmergencyRehireProfessionalMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "EmergencyRehireProfessionalMiniLayerMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "EmergencyRehireProfessionalMiniLayerMediator";
      }
      
      private var _rehireVo:EmergencyRehireProfessionalMiniLayerVo;
      
      public function EmergencyRehireProfessionalMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            super(param1,param2);
         }
      }
      
      private function handleClose(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.onRegister();
            if(!_loc1_)
            {
               this.setupListeners();
               if(!(_loc1_ && _loc1_))
               {
                  addr0045:
                  sendNotification(ApplicationNotificationConstants.HUD_SWITCH_RESCOURCE,ServerResConst.RESOURCE_EDUCATIONPOINTS);
               }
               return;
            }
         }
         §§goto(addr0045);
      }
      
      private function setupListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.component);
            if(!_loc1_)
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(!_loc1_)
               {
                  addr0041:
                  §§push(this.component);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     addr005b:
                     §§push(EmergencyRehireProfessionalMiniLayer.EP);
                     if(!_loc1_)
                     {
                        §§pop().addEventListener(§§pop(),this.handleOkClick);
                        if(_loc2_)
                        {
                           addr007c:
                           this.component.addEventListener(EmergencyRehireProfessionalMiniLayer.DEXTRO,this.handleDextroClick);
                           addr0076:
                           addr0073:
                        }
                        return;
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0073);
            }
            §§goto(addr005b);
         }
         §§goto(addr0041);
      }
      
      private function handleOkClick(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
            if(_loc2_ || _loc2_)
            {
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PROFESSIONAL_RENEW,{
                  "pid":this._rehireVo.profId,
                  "dextro":false
               });
               if(_loc2_)
               {
                  addr0065:
                  this.handleClose();
               }
            }
            return;
         }
         §§goto(addr0065);
      }
      
      private function handleDextroClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            if(!this._rehireVo.hasEnoughDextro)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  facade.sendNotification(ApplicationNotificationConstants.OPEN_GOOD_PURCHASE,{"cat":ServerTagConstants.GOOD_DEXTRO});
                  if(_loc2_ && _loc2_)
                  {
                     addr0090:
                     facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PROFESSIONAL_RENEW,{
                        "pid":this._rehireVo.profId,
                        "dextro":true
                     });
                     if(!_loc2_)
                     {
                        addr00b0:
                        this.handleClose();
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr00b0);
               }
               addr00b5:
               return;
            }
            StaticSoundDelegate.playSound(StaticSoundDelegate.DEXTRO_SPEND);
            if(_loc3_ || _loc3_)
            {
               §§goto(addr0090);
            }
         }
         §§goto(addr00b0);
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1 is EmergencyRehireProfessionalMiniLayerVo)
            {
               if(!_loc2_)
               {
                  this._rehireVo = param1 as EmergencyRehireProfessionalMiniLayerVo;
                  if(_loc3_)
                  {
                     addr0040:
                     this.component.setData(param1 as EmergencyRehireProfessionalMiniLayerVo);
                  }
                  §§goto(addr004c);
               }
               §§goto(addr0040);
            }
            addr004c:
            return;
         }
         §§goto(addr0040);
      }
      
      public function get component() : EmergencyRehireProfessionalMiniLayer
      {
         return super.viewComponent as EmergencyRehireProfessionalMiniLayer;
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.onRemove();
            if(_loc1_ || _loc2_)
            {
               addr0027:
               §§push(this.component);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§pop().removeEventListener(Event.CLOSE,this.handleClose);
                  if(_loc1_ || _loc2_)
                  {
                     §§push(this.component);
                     if(!_loc2_)
                     {
                        §§push(EmergencyRehireProfessionalMiniLayer.EP);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§pop().removeEventListener(§§pop(),this.handleOkClick);
                           if(!_loc2_)
                           {
                              addr0095:
                              this.component.removeEventListener(EmergencyRehireProfessionalMiniLayer.DEXTRO,this.handleDextroClick);
                              addr008f:
                              addr008c:
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr008f);
                  }
                  addr009c:
                  return;
               }
               §§goto(addr008f);
            }
            §§goto(addr008c);
         }
         §§goto(addr0027);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.EDUCATIONPOINTS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(!_loc4_)
         {
            §§push(ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED);
            if(_loc3_)
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(0);
                        if(_loc4_ && Boolean(param1))
                        {
                        }
                     }
                     else
                     {
                        addr008b:
                        §§push(1);
                        if(_loc3_)
                        {
                        }
                     }
                     §§goto(addr00a2);
                  }
                  else
                  {
                     §§goto(addr0087);
                  }
               }
               addr0087:
               §§goto(addr0086);
            }
            addr0086:
            if(ApplicationNotificationConstants.EDUCATIONPOINTS_CHANGED === _loc2_)
            {
               §§goto(addr008b);
            }
            else
            {
               §§push(2);
            }
            addr00a2:
            switch(§§pop())
            {
               case 0:
               case 1:
                  this.setLayerData();
                  if(_loc4_)
                  {
                  }
            }
            return;
         }
         §§goto(addr008b);
      }
      
      private function setLayerData() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:EmergencyMiniLayerProxy = facade.retrieveProxy(EmergencyMiniLayerProxy.NAME) as EmergencyMiniLayerProxy;
         if(_loc3_)
         {
            this.setData(_loc1_.getEmergencyRehireProfessionalVo(this._rehireVo.profId));
         }
      }
   }
}

