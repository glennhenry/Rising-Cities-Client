package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class PriceComponent extends Group
   {
      
      private var _2008488570ImageContainer:HGroup;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var _1055687225textLabel:LocaLabel;
      
      private var _1595195676visualOK:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _priceLabel:String;
      
      private var _affordable:Boolean = true;
      
      private var _isDirtyPrice:Boolean;
      
      private var _isDirtyAffordable:Boolean;
      
      private var _currencyType:String;
      
      public function PriceComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               addr0027:
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.mxmlContent = [this._PriceComponent_HGroup1_i()];
               }
            }
            return;
         }
         §§goto(addr0027);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr002f);
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         addr002f:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super.commitProperties();
            if(!(_loc1_ && _loc2_))
            {
               §§push(this._isDirtyPrice);
               if(_loc2_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        addr004a:
                        this.textLabel.text = this._priceLabel;
                        if(_loc2_)
                        {
                           this._isDirtyPrice = false;
                           if(!(_loc1_ && _loc2_))
                           {
                              addr0075:
                              §§push(this._isDirtyAffordable);
                              if(!(_loc1_ && _loc1_))
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       addr009b:
                                       if(this._affordable)
                                       {
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             §§push(this.visualOK);
                                             if(!_loc1_)
                                             {
                                                §§push("checkmark_green");
                                                if(!_loc1_)
                                                {
                                                   §§pop().dynaBmpSourceName = §§pop();
                                                   if(_loc2_)
                                                   {
                                                   }
                                                   addr00e8:
                                                   this._isDirtyAffordable = false;
                                                }
                                                else
                                                {
                                                   addr00d9:
                                                   §§pop().dynaBmpSourceName = §§pop();
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      §§goto(addr00e8);
                                                   }
                                                }
                                                §§goto(addr00ed);
                                             }
                                             else
                                             {
                                                addr00d6:
                                                §§push("checkmark_gray");
                                             }
                                             §§goto(addr00d9);
                                          }
                                          §§goto(addr00e8);
                                       }
                                       else
                                       {
                                          §§push(this.visualOK);
                                       }
                                       §§goto(addr00d6);
                                    }
                                    §§goto(addr00e8);
                                 }
                                 §§goto(addr00ed);
                              }
                              §§goto(addr009b);
                           }
                        }
                     }
                     §§goto(addr00ed);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr009b);
            }
            §§goto(addr004a);
         }
         addr00ed:
      }
      
      public function set currencyType(param1:String) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            if(param1 != this._currencyType)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  addr002e:
                  this._currencyType = param1;
               }
               var _loc2_:* = param1;
               if(!(_loc4_ && _loc3_))
               {
                  §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§push(_loc2_);
                     if(_loc3_ || _loc3_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc3_)
                           {
                              addr017f:
                              §§push(0);
                              if(_loc3_ || Boolean(_loc2_))
                              {
                              }
                           }
                           else
                           {
                              addr01a9:
                              §§push(1);
                              if(_loc4_ && Boolean(_loc2_))
                              {
                              }
                           }
                           §§goto(addr01c9);
                        }
                        else
                        {
                           §§goto(addr01a5);
                        }
                     }
                     addr01a5:
                     §§goto(addr01a4);
                  }
                  addr01a4:
                  if(ServerResConst.RESOURCE_EDUCATIONPOINTS === _loc2_)
                  {
                     §§goto(addr01a9);
                  }
                  else
                  {
                     §§push(2);
                  }
                  addr01c9:
                  switch(§§pop())
                  {
                     case 0:
                        §§push(this.icon);
                        if(_loc3_)
                        {
                           §§push("gui_popups_productionPopup_new");
                           if(_loc3_)
                           {
                              §§pop().dynaLibName = §§pop();
                              if(_loc3_)
                              {
                                 §§push(this.icon);
                                 if(!(_loc4_ && Boolean(_loc2_)))
                                 {
                                    §§push("icon_paper_gloves");
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       §§pop().dynaBmpSourceName = §§pop();
                                       if(_loc4_ && Boolean(_loc2_))
                                       {
                                       }
                                       break;
                                    }
                                    addr0116:
                                    §§pop().dynaLibName = §§pop();
                                    if(_loc4_ && _loc3_)
                                    {
                                       break;
                                    }
                                    addr0126:
                                    addr012a:
                                    §§push(this.icon);
                                    §§push("cc_icon_medium");
                                 }
                                 else
                                 {
                                    addr0106:
                                    §§push("gui_popups_paperPopup");
                                    if(_loc3_ || Boolean(param1))
                                    {
                                       §§goto(addr0116);
                                    }
                                 }
                                 addr012d:
                                 §§pop().dynaBmpSourceName = §§pop();
                                 if(_loc4_ && Boolean(_loc2_))
                                 {
                                 }
                                 break;
                              }
                              §§goto(addr0126);
                           }
                           else
                           {
                              addr00ac:
                              §§pop().dynaLibName = §§pop();
                              if(!(_loc3_ || _loc3_))
                              {
                                 break;
                              }
                              §§push(this.icon);
                              if(_loc3_)
                              {
                                 addr00c4:
                                 §§push("educationpoint_icon");
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§pop().dynaBmpSourceName = §§pop();
                                    if(_loc3_ || _loc3_)
                                    {
                                       break;
                                    }
                                    §§goto(addr0126);
                                 }
                              }
                              else
                              {
                                 §§goto(addr0106);
                              }
                              §§goto(addr012d);
                           }
                           §§goto(addr0106);
                        }
                        §§goto(addr012a);
                     case 1:
                        §§push(this.icon);
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           §§push("gui_infield_gui_infolayer");
                           if(!(_loc4_ && Boolean(this)))
                           {
                              §§goto(addr00ac);
                           }
                           §§goto(addr0116);
                        }
                        §§goto(addr00c4);
                     default:
                        §§push(this.icon);
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr0106);
                        }
                        §§goto(addr012a);
                  }
                  §§goto(addr01d9);
               }
               §§goto(addr017f);
            }
            addr01d9:
            return;
         }
         §§goto(addr002e);
      }
      
      public function get currencyType() : String
      {
         return this._currencyType;
      }
      
      public function set priceLabel(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._priceLabel))
            {
               if(!_loc2_)
               {
                  this._priceLabel = param1;
                  if(!_loc2_)
                  {
                     addr0043:
                     this._isDirtyPrice = true;
                     if(_loc3_ || _loc3_)
                     {
                        addr0055:
                        invalidateProperties();
                     }
                     §§goto(addr005a);
                  }
               }
               §§goto(addr0055);
            }
            addr005a:
            return;
         }
         §§goto(addr0043);
      }
      
      public function set affordable(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._affordable))
            {
               if(_loc3_)
               {
                  this._affordable = param1;
                  if(!_loc2_)
                  {
                     addr0048:
                     this._isDirtyAffordable = true;
                     if(!(_loc2_ && _loc3_))
                     {
                        invalidateProperties();
                     }
                  }
                  §§goto(addr005f);
               }
               §§goto(addr0048);
            }
         }
         addr005f:
      }
      
      public function get priceLabel() : String
      {
         return this._priceLabel;
      }
      
      public function get affordable() : Boolean
      {
         return this._affordable;
      }
      
      private function _PriceComponent_HGroup1_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc3_ || Boolean(this))
            {
               addr0032:
               _loc1_.verticalAlign = "middle";
               if(_loc3_ || Boolean(this))
               {
                  addr0045:
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._PriceComponent_LocaLabel1_i(),this._PriceComponent_BriskImageDynaLib1_i(),this._PriceComponent_BriskImageDynaLib2_i()];
                     if(!_loc2_)
                     {
                        _loc1_.id = "ImageContainer";
                        if(_loc3_)
                        {
                           addr0081:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00a8:
                                    this.ImageContainer = _loc1_;
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr00ba:
                                       BindingManager.executeBindings(this,"ImageContainer",this.ImageContainer);
                                    }
                                 }
                                 §§goto(addr00c7);
                              }
                              §§goto(addr00ba);
                           }
                           §§goto(addr00a8);
                        }
                     }
                     addr00c7:
                     return _loc1_;
                  }
                  §§goto(addr0081);
               }
               §§goto(addr00a8);
            }
            §§goto(addr0045);
         }
         §§goto(addr0032);
      }
      
      private function _PriceComponent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.styleName = "postitHeaderAlignRight";
            if(!_loc3_)
            {
               _loc1_.maxDisplayedLines = 1;
               if(!_loc3_)
               {
                  _loc1_.setStyle("verticalAlign","middle");
                  if(_loc2_ || _loc3_)
                  {
                     addr0063:
                     _loc1_.id = "textLabel";
                     if(_loc2_)
                     {
                        §§goto(addr006e);
                     }
                     §§goto(addr00b1);
                  }
                  addr006e:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr0082:
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr009f);
                        }
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr009f);
               }
               §§goto(addr0082);
            }
            §§goto(addr0063);
         }
         addr009f:
         this.textLabel = _loc1_;
         if(_loc2_ || Boolean(_loc1_))
         {
            addr00b1:
            BindingManager.executeBindings(this,"textLabel",this.textLabel);
         }
         return _loc1_;
      }
      
      private function _PriceComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "cc_icon_medium";
               if(!_loc3_)
               {
                  addr004a:
                  _loc1_.id = "icon";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr007f);
                           }
                        }
                        §§goto(addr0089);
                     }
                  }
                  addr007f:
                  this.icon = _loc1_;
                  if(_loc2_)
                  {
                     addr0089:
                     BindingManager.executeBindings(this,"icon",this.icon);
                  }
                  §§goto(addr0096);
               }
               addr0096:
               return _loc1_;
            }
            §§goto(addr004a);
         }
         §§goto(addr0089);
      }
      
      private function _PriceComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "checkmark_green";
               if(!_loc2_)
               {
                  _loc1_.id = "visualOK";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr006e:
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc3_))
                           {
                              §§goto(addr007f);
                           }
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0089);
               }
               §§goto(addr006e);
            }
            addr007f:
            this.visualOK = _loc1_;
            if(!_loc2_)
            {
               addr0089:
               BindingManager.executeBindings(this,"visualOK",this.visualOK);
            }
            return _loc1_;
         }
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get ImageContainer() : HGroup
      {
         return this._2008488570ImageContainer;
      }
      
      public function set ImageContainer(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2008488570ImageContainer;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2008488570ImageContainer = param1;
                  if(_loc4_)
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ImageContainer",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0071);
               }
            }
            addr0080:
            return;
         }
         §§goto(addr005a);
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3226745icon;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._3226745icon = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0079);
               }
            }
         }
         addr0088:
      }
      
      [Bindable(event="propertyChange")]
      public function get textLabel() : LocaLabel
      {
         return this._1055687225textLabel;
      }
      
      public function set textLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1055687225textLabel;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr004e:
                  this._1055687225textLabel = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0077);
                  }
               }
               §§goto(addr0068);
            }
            addr0077:
            return;
         }
         §§goto(addr004e);
      }
      
      [Bindable(event="propertyChange")]
      public function get visualOK() : BriskImageDynaLib
      {
         return this._1595195676visualOK;
      }
      
      public function set visualOK(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1595195676visualOK;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1595195676visualOK = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visualOK",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
         }
         addr007c:
      }
   }
}

