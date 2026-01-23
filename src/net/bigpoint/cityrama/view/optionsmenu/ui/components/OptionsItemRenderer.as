package net.bigpoint.cityrama.view.optionsmenu.ui.components
{
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import net.bigpoint.cityrama.model.optionsMenu.vo.OptionsListItemVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.CheckBox;
   import spark.components.supportClasses.ItemRenderer;
   
   public class OptionsItemRenderer extends ItemRenderer
   {
      
      public static const EVENT_ITEM_SELECTION_CHANGED:String = "EVENT_ITEM_SELECTION_CHANGED";
      
      public static const EVENT_EDIT_ACCOUNT:String = "EVENT_EDIT_ACCOUNT";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         EVENT_ITEM_SELECTION_CHANGED = "EVENT_ITEM_SELECTION_CHANGED";
         if(_loc1_ || OptionsItemRenderer)
         {
            EVENT_EDIT_ACCOUNT = "EVENT_EDIT_ACCOUNT";
         }
      }
      
      private var _1536861091checkBox:CheckBox;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function OptionsItemRenderer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(_loc2_ || _loc2_)
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  addr004a:
                  this.autoDrawBackground = false;
                  if(!(_loc1_ && _loc1_))
                  {
                     this.minHeight = 38;
                     if(!(_loc1_ && _loc1_))
                     {
                        addr0079:
                        this.height = 38;
                        if(_loc2_)
                        {
                           this.mxmlContent = [this._OptionsItemRenderer_CheckBox1_i()];
                           if(_loc2_)
                           {
                              addr0093:
                              this.addEventListener("creationComplete",this.___OptionsItemRenderer_ItemRenderer1_creationComplete);
                           }
                           §§goto(addr009f);
                        }
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr0079);
               }
               addr009f:
               return;
            }
         }
         §§goto(addr004a);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc2_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr005e);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr005e:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.data = param1;
            if(!_loc2_)
            {
               this.checkBox.selected = OptionsListItemVo(param1).isSelected;
               if(!(_loc2_ && Boolean(this)))
               {
                  this.setOptionsListText(OptionsListItemVo(param1).locaID);
               }
            }
         }
      }
      
      private function setOptionsListText(param1:String) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1;
         if(_loc3_ || Boolean(_loc2_))
         {
            §§push(OptionsMenuNavigationConstants.OPTIONS_LIST_SPARSE_TRAFFIC);
            if(!(_loc4_ && _loc3_))
            {
               §§push(_loc2_);
               if(!(_loc4_ && Boolean(this)))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr018f:
                        §§push(1);
                        if(_loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(OptionsMenuNavigationConstants.OPTIONS_LIST_LOW_QUALITY_GRAPHICS);
                     if(_loc3_)
                     {
                        addr0177:
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 §§goto(addr018f);
                              }
                              else
                              {
                                 addr0283:
                                 §§push(5);
                                 if(_loc3_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_TIPS);
                              if(_loc3_ || Boolean(_loc2_))
                              {
                                 §§push(_loc2_);
                                 if(!_loc4_)
                                 {
                                    addr01b4:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(2);
                                          if(_loc3_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr01f5:
                                          §§push(3);
                                          if(_loc4_ && Boolean(this))
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_SIMBOLS);
                                       if(!_loc4_)
                                       {
                                          §§push(_loc2_);
                                          if(!(_loc4_ && Boolean(param1)))
                                          {
                                             addr01e3:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§goto(addr01f5);
                                                }
                                                else
                                                {
                                                   §§goto(addr0283);
                                                }
                                             }
                                             else
                                             {
                                                §§push(OptionsMenuNavigationConstants.OPTIONS_LIST_RC_VERIFICATION);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc4_ && Boolean(param1)))
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc4_ && Boolean(this)))
                                                         {
                                                            §§push(4);
                                                            if(_loc3_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr0283);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(OptionsMenuNavigationConstants.OPTIONS_LIST_DELAY_NOTIFICATION);
                                                         if(!(_loc4_ && Boolean(_loc2_)))
                                                         {
                                                            addr025d:
                                                            §§push(_loc2_);
                                                            if(_loc3_)
                                                            {
                                                               addr0263:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc4_ && Boolean(param1)))
                                                                  {
                                                                     §§goto(addr0283);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0299:
                                                                     §§push(6);
                                                                     if(_loc3_ || Boolean(this))
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr02b8);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr0295);
                                                               }
                                                            }
                                                            addr0295:
                                                            §§goto(addr0294);
                                                         }
                                                         addr0294:
                                                         if(OptionsMenuNavigationConstants.OPTIONS_LIST_FULLSCREEN_ACTIVE === _loc2_)
                                                         {
                                                            §§goto(addr0299);
                                                         }
                                                         else
                                                         {
                                                            §§push(7);
                                                         }
                                                         §§goto(addr02b8);
                                                      }
                                                      §§goto(addr02b8);
                                                   }
                                                   §§goto(addr0295);
                                                }
                                                §§goto(addr025d);
                                             }
                                             §§goto(addr02b8);
                                          }
                                          §§goto(addr0263);
                                       }
                                       §§goto(addr0294);
                                    }
                                    §§goto(addr02b8);
                                 }
                                 §§goto(addr0263);
                              }
                              §§goto(addr0294);
                           }
                           §§goto(addr02b8);
                        }
                        §§goto(addr01e3);
                     }
                     §§goto(addr0294);
                  }
                  addr02b8:
                  switch(§§pop())
                  {
                     case 0:
                        this.checkBox.label = LocaUtils.getString("rcl.optionslayer.paperPopup",OptionsMenuNavigationConstants.OPTIONS_LIST_SPARSE_TRAFFIC);
                        if(_loc3_)
                        {
                        }
                        break;
                     case 1:
                        this.checkBox.label = LocaUtils.getString("rcl.optionslayer.paperPopup",OptionsMenuNavigationConstants.OPTIONS_LIST_LOW_QUALITY_GRAPHICS);
                        if(_loc3_ || Boolean(this))
                        {
                        }
                        break;
                     case 2:
                        this.checkBox.label = LocaUtils.getString("rcl.optionslayer.paperPopup",OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_TIPS);
                        if(_loc3_)
                        {
                        }
                        break;
                     case 3:
                        this.checkBox.label = LocaUtils.getString("rcl.optionslayer.paperPopup",OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_SIMBOLS);
                        if(_loc4_)
                        {
                        }
                        break;
                     case 4:
                        this.checkBox.label = LocaUtils.getString("rcl.optionslayer.paperPopup",OptionsMenuNavigationConstants.OPTIONS_LIST_RC_VERIFICATION);
                        if(_loc4_ && Boolean(_loc2_))
                        {
                        }
                        break;
                     case 5:
                        this.checkBox.label = LocaUtils.getString("rcl.optionslayer.paperPopup",OptionsMenuNavigationConstants.OPTIONS_LIST_DELAY_NOTIFICATION);
                        if(_loc4_)
                        {
                        }
                        break;
                     case 6:
                        this.checkBox.label = LocaUtils.getString("rcl.optionslayer.paperPopup",OptionsMenuNavigationConstants.OPTIONS_LIST_FULLSCREEN_ACTIVE);
                        if(_loc4_ && Boolean(param1))
                        {
                        }
                  }
                  return;
               }
               §§goto(addr01b4);
            }
            §§goto(addr0177);
         }
         §§goto(addr018f);
      }
      
      private function handleChange(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            dispatchEvent(new Event(EVENT_ITEM_SELECTION_CHANGED,true));
         }
      }
      
      private function _OptionsItemRenderer_CheckBox1_i() : CheckBox
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CheckBox = new CheckBox();
         if(!_loc2_)
         {
            _loc1_.styleName = "optionsBox";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.width = 200;
               if(!_loc2_)
               {
                  _loc1_.addEventListener("change",this.__checkBox_change);
                  if(_loc3_)
                  {
                     _loc1_.id = "checkBox";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0089:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0092:
                                 this.checkBox = _loc1_;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr00a4:
                                    BindingManager.executeBindings(this,"checkBox",this.checkBox);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr0089);
                  }
               }
               §§goto(addr00a4);
            }
         }
         §§goto(addr0089);
      }
      
      public function __checkBox_change(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.handleChange(param1);
         }
      }
      
      public function ___OptionsItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get checkBox() : CheckBox
      {
         return this._1536861091checkBox;
      }
      
      public function set checkBox(param1:CheckBox) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1536861091checkBox;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1536861091checkBox = param1;
                  addr0040:
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkBox",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr0040);
      }
   }
}

