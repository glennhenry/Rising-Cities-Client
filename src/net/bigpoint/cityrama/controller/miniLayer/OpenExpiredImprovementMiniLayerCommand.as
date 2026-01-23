package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementMiniLayerVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.ImprovementExpiredMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ImprovementExpiredMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenExpiredImprovementMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenExpiredImprovementMiniLayerCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
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
         if(!(_loc8_ && Boolean(param1)))
         {
            §§push(_loc3_);
            if(!_loc8_)
            {
               §§push(§§pop());
               if(!(_loc8_ && Boolean(param1)))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(_loc9_ || Boolean(_loc2_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc8_ && Boolean(param1)))
                        {
                           §§pop();
                           if(!(_loc8_ && Boolean(_loc3_)))
                           {
                              §§goto(addr00b6);
                           }
                           §§goto(addr00e6);
                        }
                        §§goto(addr00d0);
                     }
                     §§goto(addr00bd);
                  }
                  §§goto(addr00be);
               }
               §§goto(addr00bd);
            }
            addr00b6:
            §§push(Boolean(_loc4_));
            if(_loc9_)
            {
               addr00bd:
               var _temp_8:* = §§pop();
               addr00be:
               §§push(_temp_8);
               if(_temp_8)
               {
                  if(_loc9_ || Boolean(_loc2_))
                  {
                     addr00d0:
                     §§pop();
                     if(!(_loc8_ && Boolean(_loc3_)))
                     {
                        §§goto(addr00e2);
                     }
                     §§goto(addr00e6);
                  }
               }
            }
            addr00e2:
            if(Boolean(_loc5_))
            {
               addr00e6:
               _loc6_ = _loc2_.getImprovementMiniLayerVo(_loc5_,_loc3_,_loc4_);
               if(_loc6_)
               {
                  _loc7_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
                  _loc7_.modal = true;
                  if(_loc9_ || Boolean(_loc3_))
                  {
                     _loc7_.viewClass = ImprovementExpiredMiniLayer;
                     if(_loc9_ || Boolean(param1))
                     {
                        _loc7_.mediatorClass = ImprovementExpiredMiniLayerMediator;
                        if(_loc9_ || Boolean(param1))
                        {
                           addr0152:
                           _loc7_.mediatorName = ImprovementExpiredMiniLayerMediator.NAME;
                           if(!(_loc8_ && Boolean(this)))
                           {
                              _loc7_.data = _loc6_;
                              if(_loc9_)
                              {
                                 addr0176:
                                 facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc7_);
                              }
                           }
                        }
                        §§goto(addr0182);
                     }
                     §§goto(addr0176);
                  }
                  §§goto(addr0152);
               }
            }
            addr0182:
            return;
         }
         §§goto(addr00e6);
      }
   }
}

