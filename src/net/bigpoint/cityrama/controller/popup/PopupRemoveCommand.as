package net.bigpoint.cityrama.controller.popup
{
   import mx.core.IFlexDisplayObject;
   import mx.core.UIComponent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.popup.PopupProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.popupContainer.PopupContainerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PopupRemoveCommand extends SimpleCommand
   {
      
      public function PopupRemoveCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc7_:IFlexDisplayObject = null;
         var _loc8_:UIComponent = null;
         var _loc9_:TimerProxy = null;
         var _loc2_:PopupProxy = PopupProxy(facade.retrieveProxy(PopupProxy.NAME));
         var _loc3_:PopupContainerMediator = facade.retrieveMediator(PopupContainerMediator.NAME) as PopupContainerMediator;
         var _loc4_:String = param1.getBody() as String;
         var _loc5_:PopupSettingsVo = _loc2_.removePopupSettings(_loc4_);
         if(!_loc5_)
         {
            if(!(_loc11_ && Boolean(_loc3_)))
            {
               return;
            }
         }
         var _loc6_:IMediator = facade.removeMediator(_loc5_.mediatorName);
         if(_loc6_)
         {
            if(!(_loc11_ && Boolean(_loc2_)))
            {
               _loc7_ = IFlexDisplayObject(_loc6_.getViewComponent());
               if(!_loc11_)
               {
                  Object(_loc7_.parent).removeElement(_loc7_);
                  if(!_loc11_)
                  {
                     §§goto(addr00cc);
                  }
                  §§goto(addr00dd);
               }
               addr00cc:
               _loc2_.removePopupSettings(_loc5_.mediatorName);
               if(!_loc11_)
               {
                  addr00dd:
                  _loc5_.popupRemoved();
               }
               _loc5_ = null;
               if(_loc10_ || Boolean(this))
               {
                  if(_loc3_.modalCoverTop.visible)
                  {
                     if(!_loc11_)
                     {
                        _loc3_.modalCoverTop.visible = false;
                        if(!(_loc11_ && Boolean(_loc2_)))
                        {
                           _loc3_.modalCover.visible = true;
                           §§goto(addr011c);
                        }
                     }
                     §§goto(addr0148);
                  }
                  §§goto(addr0138);
               }
               addr011c:
               if(_loc10_)
               {
                  addr0138:
                  if(!_loc2_.isModalPopupOpened())
                  {
                     if(_loc10_)
                     {
                        addr0148:
                        _loc3_.modalCover.visible = false;
                     }
                  }
               }
               §§goto(addr014f);
            }
            §§goto(addr01d0);
         }
         addr014f:
         if(_loc3_.popupContainer.numElements)
         {
            if(_loc10_)
            {
               _loc8_ = _loc3_.popupContainer.getElementAt(_loc3_.popupContainer.numElements - 1) as UIComponent;
               _loc8_.mouseEnabled = true;
               if(_loc10_ || Boolean(_loc2_))
               {
                  _loc8_.mouseChildren = true;
               }
               §§goto(addr0190);
            }
            §§goto(addr01d0);
         }
         addr0190:
         §§push(_loc2_.popupReferences[PopupSettingsVo.MINI_POPUP].length == 0);
         if(_loc10_ || Boolean(param1))
         {
            var _temp_10:* = §§pop();
            §§push(_temp_10);
            §§push(_temp_10);
            if(!_loc11_)
            {
               if(§§pop())
               {
                  if(!_loc11_)
                  {
                     §§pop();
                     if(_loc10_ || Boolean(_loc3_))
                     {
                        addr01d0:
                        §§push(_loc2_.popupReferences[PopupSettingsVo.PAPER_POPUP].length == 0);
                        if(!(_loc11_ && Boolean(param1)))
                        {
                           addr01f0:
                           var _temp_13:* = §§pop();
                           addr01f1:
                           §§push(_temp_13);
                           if(_temp_13)
                           {
                              if(_loc10_ || Boolean(_loc3_))
                              {
                                 addr0203:
                                 §§pop();
                                 if(_loc10_ || Boolean(_loc3_))
                                 {
                                    §§goto(addr0224);
                                 }
                                 §§goto(addr0241);
                              }
                           }
                        }
                        §§goto(addr0224);
                     }
                     §§goto(addr0241);
                  }
                  §§goto(addr0203);
               }
               §§goto(addr01f0);
            }
            §§goto(addr01f1);
         }
         addr0224:
         if(_loc2_.popupReferences[PopupSettingsVo.STACK_POPUP].length == 0)
         {
            if(!(_loc11_ && Boolean(_loc2_)))
            {
               addr0241:
               facade.sendNotification(ApplicationNotificationConstants.RESUME_ALL_WALKERS);
            }
            _loc9_ = super.facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
            _loc9_.render = true;
         }
      }
   }
}

