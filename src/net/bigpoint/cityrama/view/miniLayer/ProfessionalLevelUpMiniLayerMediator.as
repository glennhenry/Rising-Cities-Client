package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.professionals.ProfessionalLevelUpLayerVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ProfessionalLevelUpMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ProfessionalLevelUpMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ProfessionalLevelUpMiniLayerMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc1_)
      {
         NAME = "ProfessionalLevelUpMiniLayerMediator";
      }
      
      private var _data:ProfessionalLevelUpLayerVo;
      
      public function ProfessionalLevelUpMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(this))
         {
            super(param1,param2);
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return super.listNotificationInterests();
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.component);
            if(!_loc1_)
            {
               §§pop().addEventListener(Event.CLOSE,this.finalCall);
               if(_loc2_)
               {
                  §§push(this.component);
                  if(_loc2_)
                  {
                     addr0043:
                     §§push(ProfessionalLevelUpMiniLayer.EVENT_ACCEPT);
                     if(!(_loc1_ && Boolean(this)))
                     {
                        §§pop().addEventListener(§§pop(),this.accept);
                        if(_loc2_ || Boolean(this))
                        {
                           addr007f:
                           this.component.addEventListener(ProfessionalLevelUpMiniLayer.EVENT_DECLINE,this.decline);
                           addr0079:
                           addr0075:
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0079);
               }
               §§goto(addr0075);
            }
            §§goto(addr0043);
         }
         addr0087:
      }
      
      private function accept(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this._data.possibleSpecialisations.length == 0);
            if(_loc3_)
            {
               if(§§pop())
               {
                  addr0039:
                  §§push(false);
                  if(!_loc4_)
                  {
                     addr0056:
                     §§push(§§pop());
                  }
               }
               else
               {
                  §§push(true);
                  if(_loc3_)
                  {
                     §§goto(addr0056);
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(_loc3_)
            {
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PROFESSIONAL_LEVEL_UP,{
                  "id":this._data.profId,
                  "accept":_loc2_
               });
               if(_loc3_)
               {
                  this.finalCall(param1);
               }
            }
            return;
         }
         §§goto(addr0039);
      }
      
      private function decline(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PROFESSIONAL_LEVEL_UP,{
               "id":this._data.profId,
               "accept":false
            });
            if(!_loc2_)
            {
               addr0041:
               this.finalCall(param1);
            }
            return;
         }
         §§goto(addr0041);
      }
      
      private function finalCall(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            if(param1)
            {
               if(_loc3_)
               {
                  §§push(param1.type == ProfessionalLevelUpMiniLayer.EVENT_ACCEPT);
                  if(_loc3_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(!_temp_3)
                     {
                        if(!(_loc2_ && Boolean(param1)))
                        {
                           §§pop();
                           if(_loc3_ || _loc2_)
                           {
                              addr0064:
                              addr005a:
                              if(param1.type == ProfessionalLevelUpMiniLayer.EVENT_DECLINE)
                              {
                                 if(_loc3_)
                                 {
                                    StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
                                    if(_loc3_)
                                    {
                                       addr008c:
                                       §§push(this.component);
                                       if(!_loc2_)
                                       {
                                          §§pop().removeEventListener(Event.CLOSE,this.finalCall);
                                          if(_loc3_ || _loc2_)
                                          {
                                             addr00ae:
                                             §§push(this.component);
                                             if(_loc3_ || Boolean(this))
                                             {
                                                §§push(ProfessionalLevelUpMiniLayer.EVENT_ACCEPT);
                                                if(_loc3_ || _loc2_)
                                                {
                                                   §§pop().removeEventListener(§§pop(),this.accept);
                                                   if(_loc3_)
                                                   {
                                                      addr00f5:
                                                      this.component.removeEventListener(ProfessionalLevelUpMiniLayer.EVENT_DECLINE,this.decline);
                                                      addr00ef:
                                                      addr00eb:
                                                      if(_loc3_)
                                                      {
                                                         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                                                      }
                                                   }
                                                   §§goto(addr0110);
                                                }
                                                §§goto(addr00f5);
                                             }
                                             §§goto(addr00ef);
                                          }
                                          §§goto(addr0110);
                                       }
                                       §§goto(addr00ef);
                                    }
                                    §§goto(addr00eb);
                                 }
                                 §§goto(addr00ae);
                              }
                              §§goto(addr008c);
                           }
                           addr0110:
                           return;
                        }
                     }
                  }
                  §§goto(addr0064);
               }
               §§goto(addr005a);
            }
            §§goto(addr008c);
         }
         §§goto(addr00ae);
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.handleNotification(param1);
         }
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._data = param1 as ProfessionalLevelUpLayerVo;
            if(!(_loc3_ && _loc3_))
            {
               this.component.data = this._data;
            }
         }
      }
      
      private function get component() : ProfessionalLevelUpMiniLayer
      {
         return super.viewComponent as ProfessionalLevelUpMiniLayer;
      }
   }
}

