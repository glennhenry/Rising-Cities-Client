package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementMiniLayerVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.ImprovementClickInfoMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ImprovementClickInfoMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenClickInfoImprovementMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenClickInfoImprovementMiniLayerCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc6_:ImprovementMiniLayerVo = null;
         var _loc7_:PopupSettingsVo = null;
         var _loc2_:ImprovementLayerProxy = facade.retrieveProxy(ImprovementLayerProxy.NAME) as ImprovementLayerProxy;
         var _loc3_:Number = Number(param1.getBody().slotId);
         var _loc4_:Number = Number(param1.getBody().buildingId);
         var _loc5_:ImprovementVo = param1.getBody().impro;
         if(_loc9_ || Boolean(param1))
         {
            §§push(_loc3_);
            if(!(_loc8_ && Boolean(_loc2_)))
            {
               §§push(§§pop());
               if(_loc9_ || Boolean(_loc2_))
               {
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  §§push(_temp_5);
                  if(!_loc8_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc8_ && Boolean(_loc3_)))
                        {
                           §§pop();
                           if(_loc9_ || Boolean(param1))
                           {
                              addr00b5:
                              §§push(Boolean(_loc4_));
                              if(!(_loc8_ && Boolean(this)))
                              {
                                 addr00c4:
                                 var _temp_9:* = §§pop();
                                 addr00c5:
                                 §§push(_temp_9);
                                 if(_temp_9)
                                 {
                                    if(_loc9_ || Boolean(this))
                                    {
                                       §§pop();
                                       if(!_loc8_)
                                       {
                                          §§goto(addr00e1);
                                       }
                                       §§goto(addr00e5);
                                    }
                                 }
                              }
                              §§goto(addr00e1);
                           }
                           §§goto(addr00e5);
                        }
                        §§goto(addr00e1);
                     }
                     §§goto(addr00c4);
                  }
                  §§goto(addr00c5);
               }
               addr00e1:
               §§goto(addr00de);
            }
            §§goto(addr00b5);
         }
         addr00de:
         if(Boolean(_loc5_))
         {
            addr00e5:
            _loc6_ = _loc2_.getImprovementMiniLayerVo(_loc5_,_loc3_,_loc4_);
            if(_loc6_)
            {
               _loc7_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
               _loc7_.modal = true;
               if(!_loc8_)
               {
                  _loc7_.viewClass = ImprovementClickInfoMiniLayer;
                  if(!_loc8_)
                  {
                     addr0120:
                     _loc7_.mediatorClass = ImprovementClickInfoMiniLayerMediator;
                     if(_loc9_ || Boolean(param1))
                     {
                        _loc7_.mediatorName = ImprovementClickInfoMiniLayerMediator.NAME;
                        if(_loc9_)
                        {
                           §§goto(addr0152);
                        }
                        §§goto(addr0166);
                     }
                  }
                  addr0152:
                  _loc7_.data = _loc6_;
                  if(!(_loc8_ && Boolean(_loc2_)))
                  {
                     addr0166:
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc7_);
                  }
                  §§goto(addr0172);
               }
               §§goto(addr0120);
            }
         }
         addr0172:
      }
   }
}

