package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementEfficiencyVo;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ImprovementEfficiencyItemRenderer extends ItemRenderer
   {
      
      private var _768466421efficiencyLabel:LocaLabel;
      
      private var _759221112efficiencyValue:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ImprovementEfficiencyVo;
      
      private var _dirty:Boolean;
      
      public function ImprovementEfficiencyItemRenderer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               addr0038:
               mx_internal::_document = this;
               if(!(_loc1_ && Boolean(this)))
               {
                  this.autoDrawBackground = false;
                  if(!_loc1_)
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr0078);
               }
            }
            addr0066:
            this.percentWidth = 100;
            if(_loc2_ || _loc1_)
            {
               addr0078:
               this.mxmlContent = [this._ImprovementEfficiencyItemRenderer_HGroup1_c()];
            }
            return;
         }
         §§goto(addr0038);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     §§goto(addr0050);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr005c);
            }
            addr0050:
            return;
         }
         addr005c:
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
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               if(!_loc2_)
               {
                  this._dirty = true;
                  if(!(_loc2_ && _loc3_))
                  {
                     this._data = param1 as ImprovementEfficiencyVo;
                     if(_loc3_ || Boolean(this))
                     {
                        addr007b:
                        invalidateProperties();
                        if(_loc3_ || Boolean(this))
                        {
                           addr008d:
                           super.data = param1;
                        }
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr007b);
               }
               §§goto(addr008d);
            }
            §§goto(addr007b);
         }
         addr0091:
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:String = null;
         if(_loc3_ || Boolean(_loc1_))
         {
            §§push(this._dirty);
            if(_loc3_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(this.efficiencyLabel);
                     §§push(LocaUtils);
                     §§push("rcl.guiinfolayer.improvements");
                     §§push("rcl.guiinfolayer.improvements.efficiencies.");
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop() + this._data.tag);
                     }
                     §§pop().text = §§pop().getString(§§pop(),§§pop());
                     if(!_loc2_)
                     {
                        §§goto(addr006c);
                     }
                     §§goto(addr015a);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr01cc);
            }
            §§goto(addr0164);
         }
         addr006c:
         §§push(this._data);
         if(_loc3_ || Boolean(_loc1_))
         {
            §§push(§§pop().moreIsGood);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr0097:
                     §§push(this.efficiencyValue);
                     if(!_loc2_)
                     {
                        §§push(this._data);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(§§pop().value);
                           if(!_loc2_)
                           {
                              §§push(0);
                              if(_loc3_)
                              {
                                 §§push(§§pop() > §§pop());
                                 if(_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          §§push("efficiencyOutputPos");
                                          if(_loc3_)
                                          {
                                             addr0103:
                                             §§pop().styleName = §§pop();
                                             if(_loc3_)
                                             {
                                                §§goto(addr015a);
                                             }
                                             §§goto(addr01a0);
                                          }
                                          else
                                          {
                                             addr014b:
                                             §§pop().styleName = §§pop();
                                             addr0149:
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§goto(addr015a);
                                             }
                                          }
                                          §§goto(addr016d);
                                       }
                                       else
                                       {
                                          addr0132:
                                          §§push("efficiencyOutputNeg");
                                          if(_loc3_)
                                          {
                                             §§goto(addr014b);
                                             §§push(§§pop());
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push("efficiencyOutputNeg");
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§goto(addr0103);
                                          §§push(§§pop());
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr0129:
                                    if(§§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          §§goto(addr0132);
                                       }
                                       §§goto(addr01a4);
                                    }
                                    else
                                    {
                                       §§push("efficiencyOutputPos");
                                       if(!_loc2_)
                                       {
                                          §§goto(addr0149);
                                       }
                                    }
                                 }
                                 §§goto(addr01c5);
                              }
                              else
                              {
                                 addr0128:
                                 §§push(§§pop() > §§pop());
                              }
                              §§goto(addr0129);
                           }
                           else
                           {
                              addr0126:
                              §§push(0);
                           }
                           §§goto(addr0128);
                        }
                        else
                        {
                           addr0123:
                           §§push(§§pop().value);
                        }
                        §§goto(addr0126);
                     }
                     else
                     {
                        addr011f:
                        §§push(this._data);
                     }
                     §§goto(addr0123);
                  }
                  addr015a:
                  §§goto(addr0164);
               }
               else
               {
                  §§push(this.efficiencyValue);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr011f);
                  }
               }
               §§goto(addr01a4);
            }
            addr0164:
            §§goto(addr015e);
         }
         addr015e:
         if(this._data.value >= 0)
         {
            if(!_loc2_)
            {
               addr016d:
               §§push("+ ");
               if(_loc2_ && Boolean(_loc1_))
               {
               }
               §§goto(addr0184);
            }
            §§goto(addr01a0);
         }
         else
         {
            §§push("- ");
         }
         addr0184:
         _loc1_ = §§pop();
         if(!(_loc2_ && _loc3_))
         {
            addr01c5:
            this.efficiencyValue.text = _loc1_ + Math.floor(Math.abs(this._data.value * 100)).toString() + " %";
            addr01a0:
            addr01a4:
            if(!_loc2_)
            {
               addr01cc:
               super.commitProperties();
            }
         }
      }
      
      private function _ImprovementEfficiencyItemRenderer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.gap = 1;
               if(_loc2_)
               {
                  addr0054:
                  _loc1_.mxmlContent = [this._ImprovementEfficiencyItemRenderer_LocaLabel1_i(),this._ImprovementEfficiencyItemRenderer_LocaLabel2_i()];
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0072:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr007e:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr007e);
               }
               addr0082:
               return _loc1_;
            }
            §§goto(addr0054);
         }
         §§goto(addr0072);
      }
      
      private function _ImprovementEfficiencyItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(_loc3_)
            {
               _loc1_.percentWidth = 66;
               if(!_loc2_)
               {
                  addr0035:
                  _loc1_.styleName = "infoLabelLeft";
                  if(_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc3_)
                     {
                        _loc1_.id = "efficiencyLabel";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    §§goto(addr0081);
                                 }
                                 §§goto(addr0093);
                              }
                           }
                        }
                     }
                     addr0081:
                     this.efficiencyLabel = _loc1_;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0093:
                        BindingManager.executeBindings(this,"efficiencyLabel",this.efficiencyLabel);
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr0093);
               }
               addr00a0:
               return _loc1_;
            }
            §§goto(addr0035);
         }
         §§goto(addr0081);
      }
      
      private function _ImprovementEfficiencyItemRenderer_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.maxDisplayedLines = 1;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 37;
               if(_loc2_)
               {
                  _loc1_.styleName = "infoLabelRight";
                  addr003c:
                  if(_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_)
                     {
                        addr005d:
                        _loc1_.id = "efficiencyValue";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr0081:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    addr008a:
                                    this.efficiencyValue = _loc1_;
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr009c:
                                       BindingManager.executeBindings(this,"efficiencyValue",this.efficiencyValue);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr008a);
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr005d);
               }
               §§goto(addr0081);
            }
            §§goto(addr003c);
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get efficiencyLabel() : LocaLabel
      {
         return this._768466421efficiencyLabel;
      }
      
      public function set efficiencyLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._768466421efficiencyLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._768466421efficiencyLabel = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"efficiencyLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0057);
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get efficiencyValue() : LocaLabel
      {
         return this._759221112efficiencyValue;
      }
      
      public function set efficiencyValue(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._759221112efficiencyValue;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._759221112efficiencyValue = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"efficiencyValue",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
               }
               §§goto(addr0064);
            }
         }
         addr0073:
      }
   }
}

