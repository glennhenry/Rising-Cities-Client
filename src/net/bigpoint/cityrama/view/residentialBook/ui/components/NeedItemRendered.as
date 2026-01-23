package net.bigpoint.cityrama.view.residentialBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.residentialBook.vo.ResidentialNeedVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.ItemRenderer;
   
   public class NeedItemRendered extends ItemRenderer
   {
      
      private var _1399907075component:NeedItemComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _needData:*;
      
      private var _dataIsDirty:Boolean;
      
      public function NeedItemRendered()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  this.autoDrawBackground = false;
                  if(!_loc2_)
                  {
                     addr004b:
                     this.mouseChildren = false;
                     if(_loc1_ || Boolean(this))
                     {
                        this.mouseEnabled = true;
                        if(!_loc2_)
                        {
                           addr0071:
                           this.mxmlContent = [this._NeedItemRendered_NeedItemComponent1_i()];
                           if(_loc1_ || Boolean(this))
                           {
                              addr0089:
                              this.addEventListener("creationComplete",this.___NeedItemRendered_ItemRenderer1_creationComplete);
                           }
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr0089);
                  }
                  addr0095:
                  return;
               }
               §§goto(addr004b);
            }
         }
         §§goto(addr0071);
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
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr005f);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0073);
            }
            addr005f:
            return;
         }
         addr0073:
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
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
      }
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.data = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               if(!RandomUtilities.isEqual(param1,this._needData))
               {
                  if(_loc2_)
                  {
                     this._dataIsDirty = true;
                     if(_loc2_ || Boolean(this))
                     {
                        addr0068:
                        this._needData = param1;
                        if(_loc2_ || Boolean(param1))
                        {
                           invalidateProperties();
                        }
                     }
                  }
               }
               §§goto(addr007f);
            }
            §§goto(addr0068);
         }
         addr007f:
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ResidentialNeedVo = null;
         if(_loc3_)
         {
            super.commitProperties();
            if(!(_loc2_ && _loc3_))
            {
               §§goto(addr002d);
            }
            §§goto(addr003f);
         }
         addr002d:
         if(this._dataIsDirty)
         {
            if(!_loc2_)
            {
               this._dataIsDirty = false;
            }
            addr003f:
            _loc1_ = this._needData as ResidentialNeedVo;
            if(_loc3_)
            {
               if(_loc1_)
               {
                  if(!_loc2_)
                  {
                     §§push(_loc1_.locked);
                     if(!_loc2_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0078:
                              if(_loc1_.available)
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(this.component);
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       §§push("active");
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          §§pop().styleName = §§pop();
                                          if(_loc3_)
                                          {
                                          }
                                          addr0114:
                                          this.component.data = _loc1_;
                                          addr0111:
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             this.setTooltips(_loc1_);
                                          }
                                       }
                                       else
                                       {
                                          addr00cf:
                                          §§pop().styleName = §§pop();
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             §§goto(addr0111);
                                          }
                                       }
                                       §§goto(addr012b);
                                    }
                                    else
                                    {
                                       §§goto(addr00c7);
                                    }
                                 }
                                 §§goto(addr0111);
                              }
                              else
                              {
                                 §§push(this.component);
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§goto(addr00c7);
                                 }
                                 else
                                 {
                                    addr00ff:
                                    §§push("locked");
                                 }
                                 §§goto(addr0102);
                              }
                              if(!_loc2_)
                              {
                                 §§goto(addr00cf);
                              }
                              else
                              {
                                 addr0102:
                                 §§pop().styleName = §§pop();
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr0111);
                                 }
                              }
                           }
                           §§goto(addr012b);
                        }
                        else
                        {
                           §§push(this.component);
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              §§goto(addr00ff);
                           }
                        }
                        §§goto(addr0114);
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0111);
               }
               §§goto(addr012b);
            }
            §§goto(addr0111);
         }
         addr012b:
      }
      
      private function setTooltips(param1:ResidentialNeedVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1.locked)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this.toolTip = StringUtil.substitute(ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.need.locked")),param1.levelToUnlock);
                  if(_loc3_ && Boolean(this))
                  {
                  }
               }
            }
            else
            {
               this.toolTip = param1.tooltip;
            }
         }
      }
      
      private function _NeedItemRendered_NeedItemComponent1_i() : NeedItemComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:NeedItemComponent = new NeedItemComponent();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.id = "component";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        addr0066:
                        this.component = _loc1_;
                        if(!_loc2_)
                        {
                           addr006f:
                           BindingManager.executeBindings(this,"component",this.component);
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0066);
            }
            §§goto(addr006f);
         }
         addr007a:
         return _loc1_;
      }
      
      public function ___NeedItemRendered_ItemRenderer1_creationComplete(param1:FlexEvent) : void
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
      public function get component() : NeedItemComponent
      {
         return this._1399907075component;
      }
      
      public function set component(param1:NeedItemComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1399907075component;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1399907075component = param1;
                  if(_loc3_)
                  {
                     §§goto(addr004e);
                  }
                  §§goto(addr0066);
               }
               addr004e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0066:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"component",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
         }
         addr0074:
      }
   }
}

