package net.bigpoint.cityrama.controller.construction
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.construction.ConstructionLayerDataProxy;
   import net.bigpoint.cityrama.model.construction.ConstructionLayerMediator;
   import net.bigpoint.cityrama.model.construction.ConstructionLayerVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.constructionLayer.ConstructionLayer;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenConstructionLayerCommand extends SimpleCommand
   {
      
      public function OpenConstructionLayerCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:BillboardObject = param1.getBody() as BillboardObject;
         if(!_loc8_)
         {
            §§push(_loc2_ == null);
            if(!_loc8_)
            {
               var _temp_1:* = §§pop();
               §§push(_temp_1);
               §§push(_temp_1);
               if(!_loc8_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc8_ && Boolean(_loc2_)))
                     {
                        §§pop();
                        if(_loc7_)
                        {
                           §§push(_loc2_.billboardObjectVo);
                           if(!_loc8_)
                           {
                              §§push(§§pop() == null);
                              if(!(_loc8_ && _loc3_))
                              {
                                 addr0065:
                                 var _temp_4:* = §§pop();
                                 §§push(_temp_4);
                                 §§push(_temp_4);
                                 if(_loc7_)
                                 {
                                    addr006c:
                                    if(!§§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          addr0076:
                                          §§pop();
                                          if(_loc7_ || _loc3_)
                                          {
                                             §§push(_loc2_.billboardObjectVo);
                                             if(!(_loc8_ && Boolean(_loc2_)))
                                             {
                                                addr0096:
                                                §§push(§§pop().configPlayfieldItemVo == null);
                                                if(!(_loc8_ && Boolean(_loc2_)))
                                                {
                                                   addr00a9:
                                                   if(§§pop())
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         §§goto(addr00b3);
                                                      }
                                                   }
                                                   §§push(_loc2_.billboardObjectVo);
                                                   if(!(_loc8_ && Boolean(this)))
                                                   {
                                                      §§push(Boolean(§§pop().configPlayfieldItemVo.isUpgrade));
                                                      if(!_loc8_)
                                                      {
                                                         addr00ec:
                                                         var _temp_9:* = §§pop();
                                                         addr00ed:
                                                         §§push(_temp_9);
                                                         if(!_temp_9)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               §§pop();
                                                               addr00fb:
                                                               addr00f8:
                                                               §§push(_loc2_.billboardObjectVo.isUnderConstruction());
                                                               if(!_loc8_)
                                                               {
                                                                  addr0105:
                                                                  addr0115:
                                                                  §§push(!§§pop());
                                                                  if(_loc7_ || _loc3_)
                                                                  {
                                                                     addr0114:
                                                                     §§push(§§pop());
                                                                  }
                                                                  var _loc3_:* = §§pop();
                                                                  var _loc4_:ConstructionLayerDataProxy = facade.retrieveProxy(ConstructionLayerDataProxy.NAME) as ConstructionLayerDataProxy;
                                                                  if(_loc4_ == null)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        return;
                                                                     }
                                                                  }
                                                                  var _loc5_:ConstructionLayerVo = _loc4_.CreateConstructionLayerVo(_loc2_,_loc3_);
                                                                  var _loc6_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
                                                                  _loc6_.modal = true;
                                                                  if(!_loc8_)
                                                                  {
                                                                     _loc6_.mediatorName = ConstructionLayerMediator.NAME;
                                                                     if(_loc7_ || _loc3_)
                                                                     {
                                                                        _loc6_.mediatorClass = ConstructionLayerMediator;
                                                                        if(_loc7_)
                                                                        {
                                                                           _loc6_.viewClass = ConstructionLayer;
                                                                           if(_loc7_ || Boolean(this))
                                                                           {
                                                                              addr01a6:
                                                                              _loc6_.data = _loc5_;
                                                                              if(!_loc8_)
                                                                              {
                                                                                 addr01b2:
                                                                                 facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc6_);
                                                                              }
                                                                           }
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr01b2);
                                                                  }
                                                                  §§goto(addr01a6);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr0114);
                                                      }
                                                      §§goto(addr0105);
                                                   }
                                                   §§goto(addr00fb);
                                                }
                                                §§goto(addr0114);
                                             }
                                             §§goto(addr00fb);
                                          }
                                          §§goto(addr00f8);
                                       }
                                       §§goto(addr00ec);
                                    }
                                    §§goto(addr00a9);
                                 }
                                 §§goto(addr00ed);
                              }
                              §§goto(addr0115);
                           }
                           §§goto(addr0096);
                        }
                        §§goto(addr00b3);
                     }
                     §§goto(addr0105);
                  }
                  §§goto(addr0065);
               }
               §§goto(addr006c);
            }
            §§goto(addr0076);
         }
         addr00b3:
      }
   }
}

