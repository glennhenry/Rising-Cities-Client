package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.skins.GridSkin;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class ArchitectTemplateDataGrid extends Group
   {
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1177280081itemList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function ArchitectTemplateDataGrid()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc1_)
               {
                  addr0042:
                  this.percentWidth = 100;
                  if(!_loc1_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0078);
               }
               addr0056:
               this.percentHeight = 100;
               if(_loc2_ || Boolean(this))
               {
                  this.mxmlContent = [this._ArchitectTemplateDataGrid_VGroup1_c()];
                  if(!_loc1_)
                  {
                     addr0078:
                     this.addEventListener("creationComplete",this.___ArchitectTemplateDataGrid_Group1_creationComplete);
                  }
               }
               return;
            }
            §§goto(addr0078);
         }
         §§goto(addr0042);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               §§goto(addr0035);
            }
            §§goto(addr0042);
         }
         addr0035:
         if(this.__moduleFactoryInitialized)
         {
            if(!_loc3_)
            {
               addr0042:
               return;
            }
         }
         else
         {
            this.__moduleFactoryInitialized = true;
         }
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
      
      private function setTooltips() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.leftArrow"));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.rightArrow"));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.itemList.setStyle("tooltipScrollLeft",_loc1_);
            if(_loc4_ || Boolean(this))
            {
               this.itemList.setStyle("tooltipScrollRight",_loc2_);
            }
         }
      }
      
      private function _ArchitectTemplateDataGrid_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.paddingLeft = 6;
               if(_loc3_)
               {
                  _loc1_.paddingRight = 6;
                  if(_loc3_)
                  {
                     _loc1_.height = 335;
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.bottom = 10;
                        if(!_loc2_)
                        {
                           _loc1_.gap = 10;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              _loc1_.verticalAlign = "middle";
                              if(!(_loc2_ && _loc3_))
                              {
                                 _loc1_.horizontalAlign = "center";
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    _loc1_.mxmlContent = [this._ArchitectTemplateDataGrid_LocaLabel1_i(),this._ArchitectTemplateDataGrid_List1_i()];
                                    addr00a8:
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00d1:
                                       if(!_loc1_.document)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             addr00e5:
                                             _loc1_.document = this;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr00e9);
                              }
                              §§goto(addr00d1);
                           }
                           §§goto(addr00e5);
                        }
                        §§goto(addr00a8);
                     }
                     addr00e9:
                     return _loc1_;
                  }
                  §§goto(addr00a8);
               }
            }
         }
         §§goto(addr00e5);
      }
      
      private function _ArchitectTemplateDataGrid_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.width = 700;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.height = 25;
               if(!_loc2_)
               {
                  _loc1_.styleName = "flavorText";
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.id = "flavorText";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0076:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr008a);
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr00b9);
                  }
                  §§goto(addr00a7);
               }
            }
            §§goto(addr0076);
         }
         addr008a:
         _loc1_.document = this;
         if(_loc3_ || Boolean(_loc1_))
         {
            addr00a7:
            this.flavorText = _loc1_;
            if(_loc3_ || Boolean(this))
            {
               addr00b9:
               BindingManager.executeBindings(this,"flavorText",this.flavorText);
            }
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplateDataGrid_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(_loc2_)
         {
            _loc1_.itemRenderer = this._ArchitectTemplateDataGrid_ClassFactory1_c();
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.height = 315;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.width = 728;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0068:
                     _loc1_.setStyle("skinClass",GridSkin);
                     if(!_loc3_)
                     {
                        _loc1_.id = "itemList";
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr00a8:
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    §§goto(addr00b1);
                                 }
                                 §§goto(addr00c3);
                              }
                           }
                           addr00b1:
                           this.itemList = _loc1_;
                           if(_loc2_ || _loc2_)
                           {
                              addr00c3:
                              BindingManager.executeBindings(this,"itemList",this.itemList);
                           }
                           §§goto(addr00d0);
                        }
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr00c3);
               }
               addr00d0:
               return _loc1_;
            }
            §§goto(addr0068);
         }
         §§goto(addr00c3);
      }
      
      private function _ArchitectTemplateDataGrid_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc2_)
         {
            _loc1_.generator = ArchitectItemRenderer;
         }
         return _loc1_;
      }
      
      public function ___ArchitectTemplateDataGrid_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.setTooltips();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1684755691flavorText;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1684755691flavorText = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0072);
                  }
               }
               §§goto(addr0063);
            }
            addr0072:
            return;
         }
         §§goto(addr0063);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemList() : List
      {
         return this._1177280081itemList;
      }
      
      public function set itemList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1177280081itemList;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1177280081itemList = param1;
                  if(_loc4_)
                  {
                     addr004c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemList",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr0064);
               }
            }
            addr0073:
            return;
         }
         §§goto(addr004c);
      }
   }
}

