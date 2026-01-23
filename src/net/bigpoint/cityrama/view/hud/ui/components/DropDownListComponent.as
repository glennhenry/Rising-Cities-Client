package net.bigpoint.cityrama.view.hud.ui.components
{
   import net.bigpoint.cityrama.model.menu.vo.IDropDownListItemVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.DropDownList;
   import spark.events.IndexChangeEvent;
   
   public class DropDownListComponent extends DropDownList
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         _skinParts = {
            "dropDown":false,
            "dataGroup":false,
            "dropIndicator":false,
            "icon":true,
            "labelDisplay":false,
            "scroller":false,
            "openButton":true
         };
      }
      
      private var _iconAdded:Boolean;
      
      public var icon:BriskImageDynaLib;
      
      private var _userselectedIndex:int;
      
      public function DropDownListComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this.addEventListener(IndexChangeEvent.CHANGE,this.handleIndexChange);
            if(_loc1_)
            {
               super();
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(Boolean(this.icon));
            if(!(_loc1_ && _loc1_))
            {
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               if(_temp_4)
               {
                  if(!_loc1_)
                  {
                     §§goto(addr0044);
                  }
               }
               §§goto(addr004e);
            }
            addr0044:
            §§pop();
            if(!_loc1_)
            {
               addr004e:
               if(Boolean(dataProvider))
               {
                  if(_loc2_)
                  {
                     if(selectedIndex == -1)
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           selectedIndex = this._userselectedIndex;
                           if(!_loc1_)
                           {
                              addr0086:
                              this.handleIndexChange(null);
                              if(_loc2_)
                              {
                                 addr0091:
                                 super.commitProperties();
                              }
                              §§goto(addr0097);
                           }
                        }
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr0091);
            }
            addr0097:
            return;
         }
         §§goto(addr0086);
      }
      
      private function handleIndexChange(param1:IndexChangeEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:DropDownList = this;
         var _loc3_:IDropDownListItemVo = _loc2_.dataProvider.getItemAt(_loc2_.selectedIndex) as IDropDownListItemVo;
         if(_loc4_ || Boolean(_loc3_))
         {
            §§push(this.icon);
            if(!(_loc5_ && Boolean(_loc2_)))
            {
               §§push(_loc3_.dynaLibName);
               if(!(_loc5_ && Boolean(this)))
               {
                  §§pop().dynaLibName = §§pop();
                  if(!_loc5_)
                  {
                     this._userselectedIndex = selectedIndex;
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        addr00a2:
                        this.icon.dynaBmpSourceName = _loc3_.dynaImageName + "_big";
                        addr0099:
                        addr009d:
                     }
                     return;
                  }
                  §§goto(addr0099);
               }
               §§goto(addr00a2);
            }
            §§goto(addr009d);
         }
         §§goto(addr0099);
      }
      
      public function set externelSelectedIndex(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:DropDownList = this;
         if(_loc4_ || _loc3_)
         {
            this._userselectedIndex = _loc2_.dataProvider.getItemIndex(param1);
            if(!_loc3_)
            {
               selectedIndex = -1;
               if(_loc4_ || Boolean(param1))
               {
                  invalidateProperties();
               }
            }
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(this))
         {
            super.partAdded(param1,param2);
            if(!_loc4_)
            {
               if(param2 == this.icon)
               {
                  if(!_loc4_)
                  {
                     this._iconAdded = true;
                     if(_loc3_)
                     {
                        addr0053:
                        invalidateProperties();
                     }
                     §§goto(addr0058);
                  }
                  §§goto(addr0053);
               }
               addr0058:
               return;
            }
         }
         §§goto(addr0053);
      }
      
      public function get userselectedIndex() : int
      {
         return this._userselectedIndex;
      }
   }
}

