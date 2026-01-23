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
   
   public class OpenReplaceExpiredImprovementMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenReplaceExpiredImprovementMiniLayerCommand()
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
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc7_:ImprovementMiniLayerVo = null;
         var _loc8_:ImprovementReplacementMiniLayerVo = null;
         var _loc9_:PopupSettingsVo = null;
         var _loc2_:ImprovementLayerProxy = facade.retrieveProxy(ImprovementLayerProxy.NAME) as ImprovementLayerProxy;
         var _loc3_:Number = Number(param1.getBody().slotId);
         var _loc4_:Number = Number(param1.getBody().buildingId);
         var _loc5_:ImprovementVo = param1.getBody().impro;
         var _loc6_:ImprovementVo = param1.getBody().newImpro;
         if(!(_loc11_ && Boolean(this)))
         {
            §§push(_loc3_);
            if(_loc10_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(!(_loc11_ && Boolean(param1)))
                  {
                     §§pop();
                     if(_loc10_ || Boolean(this))
                     {
                        addr009f:
                        §§push(_loc4_);
                        if(!(_loc11_ && Boolean(param1)))
                        {
                           var _temp_6:* = §§pop();
                           §§push(_temp_6);
                           §§push(_temp_6);
                           if(_loc10_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc11_)
                                 {
                                    §§pop();
                                    if(_loc10_ || Boolean(_loc2_))
                                    {
                                       addr00dc:
                                       §§push(_loc5_);
                                       if(_loc10_)
                                       {
                                          §§goto(addr00e6);
                                       }
                                       §§goto(addr00f1);
                                    }
                                    §§goto(addr00ff);
                                 }
                              }
                              addr00e6:
                              var _temp_8:* = §§pop();
                              §§goto(addr00e7);
                           }
                           addr00e7:
                           §§push(_temp_8);
                           if(_temp_8)
                           {
                              if(!_loc11_)
                              {
                                 addr00f1:
                                 §§pop();
                                 if(!_loc11_)
                                 {
                                    §§goto(addr00fb);
                                 }
                                 §§goto(addr00ff);
                              }
                           }
                           addr00fb:
                           if(Boolean(_loc6_))
                           {
                              addr00ff:
                              _loc7_ = _loc2_.getImprovementMiniLayerVo(_loc5_,_loc3_,_loc4_);
                              _loc8_ = _loc2_.getImprovementReplacementMiniLayerVo(_loc7_,_loc6_,ImprovementReplacementMiniLayerVo.STATE_REPLACE_EXPIRED);
                              if(_loc8_)
                              {
                                 _loc9_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
                                 _loc9_.modal = true;
                                 if(_loc10_)
                                 {
                                    _loc9_.viewClass = ImprovementReplacementMiniLayer;
                                    if(_loc10_)
                                    {
                                       _loc9_.mediatorClass = ImprovementReplacementMiniLayerMediator;
                                       if(_loc10_)
                                       {
                                          _loc9_.mediatorName = ImprovementReplacementMiniLayerMediator.NAME;
                                          §§goto(addr015d);
                                       }
                                       §§goto(addr0197);
                                    }
                                 }
                                 addr015d:
                                 if(!(_loc11_ && Boolean(_loc2_)))
                                 {
                                    _loc9_.data = _loc8_;
                                    if(_loc10_ || Boolean(this))
                                    {
                                       addr0197:
                                       facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc9_);
                                    }
                                 }
                                 §§goto(addr01a3);
                              }
                           }
                           addr01a3:
                           return;
                        }
                        §§goto(addr00f1);
                     }
                     §§goto(addr00dc);
                  }
               }
            }
            §§goto(addr009f);
         }
         §§goto(addr00dc);
      }
   }
}

