package net.bigpoint.cityrama.controller.popup
{
   import mx.core.IFlexDisplayObject;
   import mx.core.IVisualElement;
   import mx.core.UIComponent;
   import mx.managers.PopUpManager;
   import mx.managers.PopUpManagerChildList;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.popupContainer.PopupContainerMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class PopupExecuteCommand extends SimpleCommand
   {
      
      public function PopupExecuteCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:PopupSettingsVo = PopupSettingsVo(param1.getBody());
         if(!_loc4_)
         {
            this.openPopup(_loc2_);
         }
      }
      
      private function openPopup(param1:PopupSettingsVo) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc7_:UIComponent = null;
         var _loc2_:PopupContainerMediator = facade.retrieveMediator(PopupContainerMediator.NAME) as PopupContainerMediator;
         var _loc3_:IFlexDisplayObject = PopUpManager.createPopUp(_loc2_.popupContainer,param1.viewClass,false,PopUpManagerChildList.PARENT);
         if(_loc9_ || Boolean(_loc2_))
         {
            Object(_loc3_).setStyle("verticalCenter",0);
            if(!_loc8_)
            {
               Object(_loc3_).setStyle("horizontalCenter",0);
            }
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.popupContainer.numElements)
         {
            _loc7_ = _loc2_.popupContainer.getElementAt(_loc4_) as UIComponent;
            _loc7_.mouseEnabled = false;
            if(!(_loc8_ && Boolean(_loc2_)))
            {
               _loc7_.mouseChildren = false;
               if(!_loc9_)
               {
                  continue;
               }
            }
            _loc4_++;
         }
         if(!(_loc8_ && Boolean(this)))
         {
            this.cleanUpTopLayer(_loc2_);
            if(!_loc8_)
            {
               §§push(param1.modal);
               if(!_loc8_)
               {
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        §§push(_loc2_.popupContainer.numElements > 0);
                        if(_loc9_ || Boolean(_loc3_))
                        {
                           addr010f:
                           var _temp_7:* = §§pop();
                           §§push(_temp_7);
                           if(!_temp_7)
                           {
                              if(!(_loc8_ && Boolean(_loc3_)))
                              {
                                 §§pop();
                                 if(_loc9_)
                                 {
                                    addr0133:
                                    if(_loc2_.stackContainer.numElements > 0)
                                    {
                                       if(!(_loc8_ && Boolean(_loc3_)))
                                       {
                                          this.addToTopContainer(_loc3_ as IVisualElement,_loc2_,param1.type == PopupSettingsVo.STACK_POPUP);
                                          if(_loc8_)
                                          {
                                             addr01a5:
                                             _loc2_.popupContainer.addElement(_loc3_ as IVisualElement);
                                             if(_loc9_ || Boolean(_loc2_))
                                             {
                                             }
                                          }
                                          addr0237:
                                          _loc2_.popupContainer.visible = true;
                                          if(_loc9_ || Boolean(_loc2_))
                                          {
                                             §§goto(addr024c);
                                          }
                                          §§goto(addr0259);
                                       }
                                       §§goto(addr01a5);
                                    }
                                    else
                                    {
                                       _loc2_.modalCover.visible = true;
                                       if(_loc9_ || Boolean(_loc3_))
                                       {
                                          §§push(param1.type);
                                          if(!_loc8_)
                                          {
                                             §§push(PopupSettingsVo.STACK_POPUP);
                                             if(_loc9_)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§goto(addr01a5);
                                                   }
                                                   else
                                                   {
                                                      addr01fd:
                                                      _loc2_.popupContainer.addElement(_loc3_ as IVisualElement);
                                                      if(_loc9_ || Boolean(_loc2_))
                                                      {
                                                         §§goto(addr0237);
                                                      }
                                                   }
                                                   §§goto(addr026e);
                                                }
                                                else
                                                {
                                                   _loc2_.stackContainer.addElement(_loc3_ as IVisualElement);
                                                   if(!(_loc8_ && Boolean(this)))
                                                   {
                                                      §§goto(addr0237);
                                                   }
                                                }
                                                §§goto(addr0259);
                                             }
                                             else
                                             {
                                                addr01eb:
                                                if(§§pop() != §§pop())
                                                {
                                                   if(_loc9_ || Boolean(_loc2_))
                                                   {
                                                      §§goto(addr01fd);
                                                   }
                                                   §§goto(addr0237);
                                                }
                                                else
                                                {
                                                   _loc2_.stackContainer.addElement(_loc3_ as IVisualElement);
                                                   if(_loc9_ || Boolean(this))
                                                   {
                                                      §§goto(addr0237);
                                                   }
                                                }
                                             }
                                             §§goto(addr024c);
                                          }
                                          else
                                          {
                                             addr01e6:
                                             §§push(PopupSettingsVo.STACK_POPUP);
                                          }
                                          §§goto(addr01eb);
                                       }
                                    }
                                    §§goto(addr0237);
                                 }
                                 addr024c:
                                 _loc2_.stackContainer.visible = true;
                                 if(_loc9_)
                                 {
                                    addr0259:
                                    _loc2_.popupContainerTop.visible = true;
                                    if(!(_loc8_ && Boolean(_loc3_)))
                                    {
                                       addr026e:
                                       _loc2_.stackContainerTop.visible = true;
                                    }
                                 }
                                 §§goto(addr0275);
                              }
                           }
                        }
                        §§goto(addr0133);
                     }
                     addr0275:
                     var _loc5_:Class = param1.mediatorClass;
                     var _loc6_:Mediator = new _loc5_(param1.mediatorName,_loc3_);
                     if(_loc6_ is IDataReceiverMediator)
                     {
                        if(_loc9_)
                        {
                           IDataReceiverMediator(_loc6_).setData(param1.data);
                           if(_loc9_)
                           {
                              §§goto(addr02bc);
                           }
                        }
                        §§goto(addr02ca);
                     }
                     addr02bc:
                     facade.registerMediator(_loc6_);
                     if(!_loc8_)
                     {
                        addr02ca:
                        param1.creationComplete();
                     }
                     return;
                  }
                  §§push(param1.type);
                  §§goto(addr01e6);
               }
               §§goto(addr010f);
            }
            §§goto(addr0237);
         }
         §§goto(addr026e);
      }
      
      private function addToTopContainer(param1:IVisualElement, param2:PopupContainerMediator, param3:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            param2.modalCover.visible = false;
            if(!(_loc4_ && Boolean(param2)))
            {
               if(!param3)
               {
                  if(_loc5_)
                  {
                     param2.popupContainerTop.addElement(param1);
                     if(_loc5_)
                     {
                     }
                  }
                  addr007f:
                  param2.modalCoverTop.visible = true;
               }
               else
               {
                  param2.stackContainerTop.addElement(param1);
                  if(_loc5_ || Boolean(param1))
                  {
                     §§goto(addr007f);
                  }
               }
               §§goto(addr0086);
            }
            §§goto(addr007f);
         }
         addr0086:
      }
      
      private function cleanUpTopLayer(param1:PopupContainerMediator) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1.popupContainerTop.numElements > 0)
            {
               if(_loc3_)
               {
                  param1.popupContainer.addElement(param1.popupContainerTop.getElementAt(0));
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr0076);
               }
            }
            addr0064:
            if(param1.stackContainerTop.numElements > 0)
            {
               if(_loc3_)
               {
                  addr0076:
                  param1.stackContainer.addElement(param1.stackContainerTop.getElementAt(0));
               }
            }
            §§goto(addr0088);
         }
         addr0088:
      }
   }
}

