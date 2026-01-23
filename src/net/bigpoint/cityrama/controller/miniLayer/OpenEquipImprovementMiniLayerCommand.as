package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementMiniLayerVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.ImprovementEquipMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ImprovementEquipMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenEquipImprovementMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenEquipImprovementMiniLayerCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
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
         if(!(_loc8_ && Boolean(_loc2_)))
         {
            §§push(_loc3_);
            if(_loc9_ || Boolean(_loc3_))
            {
               §§push(§§pop());
               if(!_loc8_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(_loc9_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc8_ && Boolean(_loc3_)))
                        {
                           §§pop();
                           if(!(_loc8_ && Boolean(_loc2_)))
                           {
                              addr00b0:
                              §§push(Boolean(_loc4_));
                              if(!_loc8_)
                              {
                                 §§goto(addr00b7);
                              }
                              §§goto(addr00c2);
                           }
                           §§goto(addr00d0);
                        }
                        §§goto(addr00c2);
                     }
                     addr00b7:
                     var _temp_7:* = §§pop();
                     §§goto(addr00b8);
                  }
                  addr00b8:
                  §§push(_temp_7);
                  if(_temp_7)
                  {
                     if(_loc9_)
                     {
                        addr00c2:
                        §§pop();
                        if(_loc9_)
                        {
                           §§goto(addr00cc);
                        }
                        §§goto(addr00d0);
                     }
                  }
                  addr00cc:
                  if(Boolean(_loc5_))
                  {
                     addr00d0:
                     _loc6_ = _loc2_.getImprovementMiniLayerVo(_loc5_,_loc3_,_loc4_);
                     if(_loc6_)
                     {
                        _loc7_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
                        _loc7_.modal = true;
                        if(!(_loc8_ && Boolean(_loc2_)))
                        {
                           _loc7_.viewClass = ImprovementEquipMiniLayer;
                           if(_loc9_)
                           {
                              _loc7_.mediatorClass = ImprovementEquipMiniLayerMediator;
                              if(!_loc8_)
                              {
                                 _loc7_.mediatorName = ImprovementEquipMiniLayerMediator.NAME;
                                 if(!(_loc8_ && Boolean(param1)))
                                 {
                                    _loc7_.data = _loc6_;
                                    if(_loc9_)
                                    {
                                       addr0151:
                                       facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc7_);
                                    }
                                 }
                              }
                              §§goto(addr015d);
                           }
                        }
                        §§goto(addr0151);
                     }
                  }
                  addr015d:
                  return;
               }
               §§goto(addr00b7);
            }
            §§goto(addr00b0);
         }
         §§goto(addr00d0);
      }
   }
}

