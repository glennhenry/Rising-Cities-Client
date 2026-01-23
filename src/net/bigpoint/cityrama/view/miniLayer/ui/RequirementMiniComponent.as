package net.bigpoint.cityrama.view.miniLayer.ui
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class RequirementMiniComponent extends HGroup
   {
      
      private var _1229015684amountLabel:LocaLabel;
      
      private var _399321045checkmark:BriskImageDynaLib;
      
      private var _102265gfx:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _canAfford:Boolean;
      
      private var _data:ConfigOutputDTO;
      
      private var _dirty:Boolean;
      
      public function RequirementMiniComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               §§goto(addr001e);
            }
            §§goto(addr0038);
         }
         addr001e:
         mx_internal::_document = this;
         if(!(_loc1_ && _loc1_))
         {
            addr0038:
            this.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr0054);
            }
            §§goto(addr0083);
         }
         addr0054:
         this.percentHeight = 100;
         if(!(_loc1_ && _loc1_))
         {
            this.verticalAlign = "middle";
            if(_loc2_ || _loc1_)
            {
               addr0083:
               this.gap = 0;
               if(_loc2_)
               {
                  addr008d:
                  this.mxmlContent = [this._RequirementMiniComponent_BriskImageDynaLib1_i(),this._RequirementMiniComponent_Group1_c(),this._RequirementMiniComponent_LocaLabel1_i(),this._RequirementMiniComponent_Group2_c(),this._RequirementMiniComponent_BriskImageDynaLib2_i()];
               }
               §§goto(addr00b0);
            }
            §§goto(addr008d);
         }
         addr00b0:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && _loc2_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc2_)
                  {
                     return;
                  }
               }
               addr006c:
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr006c);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      public function setData(param1:ConfigOutputDTO, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(RandomUtilities.isUnEqual(this._data,param1));
            if(_loc4_)
            {
               §§push(§§pop());
               if(_loc4_ || Boolean(param1))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(!_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§pop();
                           if(!_loc3_)
                           {
                              §§goto(addr0076);
                           }
                           §§goto(addr00b1);
                        }
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr006e);
               }
               §§goto(addr0075);
            }
            addr0076:
            §§push(param2);
            if(_loc4_)
            {
               addr006e:
               §§push(§§pop() == this._canAfford);
               if(_loc4_)
               {
                  addr0075:
                  §§push(!§§pop());
               }
            }
            if(§§pop())
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._dirty = true;
                  if(!_loc3_)
                  {
                     this._data = param1;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr00b1:
                        this._canAfford = param2;
                        if(_loc4_)
                        {
                           addr00bc:
                           invalidateProperties();
                        }
                     }
                  }
                  §§goto(addr00c1);
               }
               §§goto(addr00bc);
            }
            addr00c1:
            return;
         }
         §§goto(addr00bc);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            super.commitProperties();
            if(_loc3_ || Boolean(_loc1_))
            {
               if(this._dirty)
               {
                  if(_loc3_ || _loc2_)
                  {
                     this._dirty = false;
                     if(_loc3_)
                     {
                        this.amountLabel.text = LocaUtils.getThousendSeperatedNumber(Math.abs(this._data.outputAmount));
                        if(_loc3_)
                        {
                           addr006e:
                           §§push(this._data);
                           if(_loc3_)
                           {
                              if(§§pop().goodConfig)
                              {
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr008b:
                                    §§push(this.gfx);
                                    if(!_loc2_)
                                    {
                                       §§push("small_");
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          §§push(§§pop() + this._data.goodConfig.gfxId);
                                          if(!_loc2_)
                                          {
                                             addr00c0:
                                             §§pop().dynaBmpSourceName = §§pop();
                                             if(!_loc2_)
                                             {
                                                addr00ce:
                                                this.gfx.dynaLibName = "gui_popups_smallGoodIcons";
                                                addr00cb:
                                                addr00c7:
                                                if(!(_loc3_ || Boolean(_loc1_)))
                                                {
                                                   addr011a:
                                                   var _loc1_:* = this._data.resourceConfig.type;
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      if(ServerResConst.RESOURCE_VIRTUALCURRENCY === _loc1_)
                                                      {
                                                         addr013b:
                                                         §§push(0);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(1);
                                                      }
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            §§push(this.gfx);
                                                            if(_loc3_)
                                                            {
                                                               §§push("cc_icon_medium");
                                                               if(!_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§pop().dynaBmpSourceName = §§pop();
                                                               if(_loc2_ && _loc2_)
                                                               {
                                                               }
                                                               addr0180:
                                                               §§push(this.gfx);
                                                            }
                                                            §§push("gui_popups_paperPopup");
                                                            break;
                                                         default:
                                                            §§goto(addr0180);
                                                      }
                                                      §§pop().dynaLibName = §§pop();
                                                      if(!_loc2_)
                                                      {
                                                         addr018e:
                                                         §§push(this.checkmark);
                                                         if(!_loc2_)
                                                         {
                                                            if(this._canAfford)
                                                            {
                                                               addr019f:
                                                               §§push("checkmark_green");
                                                               if(_loc3_)
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push("checkmark_gray");
                                                            }
                                                            §§pop().dynaBmpSourceName = §§pop();
                                                            §§goto(addr01b0);
                                                         }
                                                         §§goto(addr019f);
                                                      }
                                                      §§goto(addr01b0);
                                                   }
                                                   §§goto(addr013b);
                                                }
                                                §§goto(addr018e);
                                             }
                                             §§goto(addr011a);
                                          }
                                          §§goto(addr00ce);
                                       }
                                       §§goto(addr00c0);
                                    }
                                    §§goto(addr00cb);
                                 }
                                 §§goto(addr00c7);
                              }
                              else
                              {
                                 addr00e5:
                                 if(this._data.resourceConfig)
                                 {
                                    §§goto(addr011a);
                                 }
                              }
                              §§goto(addr018e);
                           }
                           §§goto(addr00e5);
                        }
                        §§goto(addr018e);
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr018e);
               }
               addr01b0:
               return;
            }
            §§goto(addr008b);
         }
         §§goto(addr006e);
      }
      
      private function _RequirementMiniComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.id = "gfx";
            if(!(_loc2_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        §§goto(addr0063);
                     }
                     §§goto(addr0075);
                  }
               }
               addr0063:
               this.gfx = _loc1_;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0075:
                  BindingManager.executeBindings(this,"gfx",this.gfx);
               }
               §§goto(addr0082);
            }
         }
         addr0082:
         return _loc1_;
      }
      
      private function _RequirementMiniComponent_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.width = 2;
            if(!(_loc2_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0068:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr006c);
            }
            §§goto(addr0068);
         }
         addr006c:
         return _loc1_;
      }
      
      private function _RequirementMiniComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.styleName = "levelLabel";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.id = "amountLabel";
               if(!(_loc2_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr0074);
                     }
                  }
                  §§goto(addr007d);
               }
            }
         }
         addr0074:
         _loc1_.document = this;
         if(_loc3_)
         {
            addr007d:
            this.amountLabel = _loc1_;
            if(_loc3_ || Boolean(_loc1_))
            {
               BindingManager.executeBindings(this,"amountLabel",this.amountLabel);
            }
         }
         return _loc1_;
      }
      
      private function _RequirementMiniComponent_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.width = 4;
            if(_loc2_ || _loc3_)
            {
               §§goto(addr0052);
            }
            §§goto(addr0066);
         }
         addr0052:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0066:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _RequirementMiniComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "checkmark_gray";
               if(_loc3_)
               {
                  _loc1_.id = "checkmark";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr006f:
                              this.checkmark = _loc1_;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr0081:
                                 BindingManager.executeBindings(this,"checkmark",this.checkmark);
                              }
                           }
                        }
                        §§goto(addr008e);
                     }
                  }
                  §§goto(addr006f);
               }
               §§goto(addr0081);
            }
            addr008e:
            return _loc1_;
         }
         §§goto(addr0081);
      }
      
      [Bindable(event="propertyChange")]
      public function get amountLabel() : LocaLabel
      {
         return this._1229015684amountLabel;
      }
      
      public function set amountLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1229015684amountLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1229015684amountLabel = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amountLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr0072);
               }
            }
            addr0081:
            return;
         }
         §§goto(addr0072);
      }
      
      [Bindable(event="propertyChange")]
      public function get checkmark() : BriskImageDynaLib
      {
         return this._399321045checkmark;
      }
      
      public function set checkmark(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._399321045checkmark;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._399321045checkmark = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkmark",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get gfx() : BriskImageDynaLib
      {
         return this._102265gfx;
      }
      
      public function set gfx(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._102265gfx;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._102265gfx = param1;
                  addr0048:
                  if(!_loc4_)
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr0077);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0077:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gfx",_loc2_,param1));
                  }
               }
               §§goto(addr0086);
            }
            addr0086:
            return;
         }
         §§goto(addr0048);
      }
   }
}

