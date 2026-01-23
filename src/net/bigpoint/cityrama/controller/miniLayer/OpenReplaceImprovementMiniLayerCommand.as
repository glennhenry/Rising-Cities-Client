package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementMiniLayerVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementReplacementMiniLayerVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.ImprovementReplacementMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ImprovementReplacementMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenReplaceImprovementMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenReplaceImprovementMiniLayerCommand()
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
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc7_:ImprovementMiniLayerVo = null;
         var _loc8_:ImprovementReplacementMiniLayerVo = null;
         var _loc9_:PopupSettingsVo = null;
         var _loc2_:ImprovementLayerProxy = facade.retrieveProxy(ImprovementLayerProxy.NAME) as ImprovementLayerProxy;
         var _loc3_:Number = Number(param1.getBody().slotId);
         var _loc4_:Number = Number(param1.getBody().buildingId);
         var _loc5_:ImprovementVo = param1.getBody().impro;
         var _loc6_:ImprovementVo = param1.getBody().newImpro;
         if(!_loc10_)
         {
            §§push(_loc3_);
            if(_loc11_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(!_loc10_)
                  {
                     addr0080:
                     §§pop();
                     if(_loc11_)
                     {
                        addr0089:
                        §§push(_loc4_);
                        if(_loc11_ || Boolean(_loc2_))
                        {
                           var _temp_4:* = §§pop();
                           §§push(_temp_4);
                           §§push(_temp_4);
                           if(_loc11_ || Boolean(param1))
                           {
                              if(§§pop())
                              {
                                 if(!(_loc10_ && Boolean(_loc2_)))
                                 {
                                    §§pop();
                                    if(_loc11_)
                                    {
                                       addr00ce:
                                       §§push(_loc5_);
                                       if(!_loc10_)
                                       {
                                          addr00d8:
                                          var _temp_7:* = §§pop();
                                          addr00d9:
                                          §§push(_temp_7);
                                          if(_temp_7)
                                          {
                                             if(_loc11_)
                                             {
                                                §§pop();
                                                if(!_loc10_)
                                                {
                                                   §§goto(addr00ed);
                                                }
                                                §§goto(addr00f1);
                                             }
                                          }
                                       }
                                       addr00ed:
                                    }
                                    §§goto(addr00ea);
                                 }
                                 §§goto(addr00ed);
                              }
                              §§goto(addr00d8);
                           }
                           §§goto(addr00d9);
                        }
                        §§goto(addr00d8);
                     }
                     §§goto(addr00ce);
                  }
               }
               §§goto(addr0089);
            }
            §§goto(addr0080);
         }
         addr00ea:
         if(Boolean(_loc6_))
         {
            addr00f1:
            _loc7_ = _loc2_.getImprovementMiniLayerVo(_loc5_,_loc3_,_loc4_);
            _loc8_ = _loc2_.getImprovementReplacementMiniLayerVo(_loc7_,_loc6_,ImprovementReplacementMiniLayerVo.STATE_REPLACE);
            if(_loc8_)
            {
               _loc9_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
               _loc9_.modal = true;
               if(!_loc10_)
               {
                  _loc9_.viewClass = ImprovementReplacementMiniLayer;
                  if(!(_loc10_ && Boolean(_loc3_)))
                  {
                     _loc9_.mediatorClass = ImprovementReplacementMiniLayerMediator;
                     if(!_loc10_)
                     {
                        addr0162:
                        _loc9_.mediatorName = ImprovementReplacementMiniLayerMediator.NAME;
                        if(_loc11_)
                        {
                           §§goto(addr0172);
                        }
                        §§goto(addr017e);
                     }
                     addr0172:
                     _loc9_.data = _loc8_;
                     if(_loc11_)
                     {
                        addr017e:
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc9_);
                     }
                     §§goto(addr018a);
                  }
               }
               §§goto(addr0162);
            }
         }
         addr018a:
      }
   }
}

