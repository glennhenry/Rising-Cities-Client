package net.bigpoint.cityrama.view.residentialBook.ui.components
{
   import net.bigpoint.cityrama.model.detailViews.vo.DropDownAmountListItemVo;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import spark.components.DropDownList;
   import spark.events.IndexChangeEvent;
   
   public class DropDownAmountListComponent extends DropDownList
   {
      
      public static const DROPDOWN_INDEX_CHANGED:String = "DROPDOWN_INDEX_CHANGED";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         DROPDOWN_INDEX_CHANGED = "DROPDOWN_INDEX_CHANGED";
         if(!_loc1_)
         {
            _skinParts = {
               "dropDown":false,
               "dataGroup":false,
               "amountLabel":true,
               "dropIndicator":false,
               "labelDisplay":false,
               "scroller":false,
               "openButton":true
            };
         }
      }
      
      public var amountLabel:LocaLabel;
      
      private var _userSelectedIndex:int;
      
      private var _labelAdded:Boolean;
      
      public function DropDownAmountListComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            this.addEventListener(IndexChangeEvent.CHANGE,this.handleIndexChange);
            if(!_loc2_)
            {
               addr0030:
               super();
            }
            return;
         }
         §§goto(addr0030);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(Boolean(dataProvider));
            if(_loc2_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(!_loc1_)
                  {
                     addr0031:
                     §§pop();
                     if(_loc2_ || _loc1_)
                     {
                        addr0054:
                        §§push(this._labelAdded);
                        if(_loc2_)
                        {
                           addr0053:
                           §§push(§§pop());
                        }
                        if(§§pop())
                        {
                           if(_loc2_ || _loc1_)
                           {
                              if(selectedIndex == -1)
                              {
                                 if(_loc2_)
                                 {
                                    addr007d:
                                    selectedIndex = this._userSelectedIndex;
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       this.handleIndexChange(null);
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          addr00a7:
                                          super.commitProperties();
                                       }
                                    }
                                    §§goto(addr00ad);
                                 }
                              }
                              §§goto(addr00a7);
                           }
                           addr00ad:
                           return;
                        }
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr0053);
               }
               §§goto(addr0054);
            }
            §§goto(addr0031);
         }
         §§goto(addr007d);
      }
      
      private function handleIndexChange(param1:IndexChangeEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:DropDownList = this;
         var _loc3_:DropDownAmountListItemVo = _loc2_.dataProvider.getItemAt(_loc2_.selectedIndex) as DropDownAmountListItemVo;
         if(!_loc5_)
         {
            §§push(this.amountLabel);
            if(!(_loc5_ && Boolean(_loc2_)))
            {
               §§push(§§pop());
               if(!_loc5_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(_loc4_)
                     {
                        addr0064:
                        §§pop();
                        if(_loc4_)
                        {
                           addr006d:
                           if(Boolean(_loc3_))
                           {
                              if(_loc4_)
                              {
                                 addr007b:
                                 this.amountLabel.text = LocaUtils.getThousendSeperatedNumber(_loc3_.categoryAmount);
                                 if(!(_loc5_ && Boolean(_loc3_)))
                                 {
                                    this._userSelectedIndex = selectedIndex;
                                    addr0095:
                                    if(!(_loc5_ && Boolean(_loc2_)))
                                    {
                                       §§goto(addr00b7);
                                    }
                                    §§goto(addr00c2);
                                 }
                                 addr00b7:
                                 if(param1)
                                 {
                                    if(!_loc5_)
                                    {
                                       addr00c2:
                                       dispatchEvent(new IndexChangeEvent(DROPDOWN_INDEX_CHANGED,true,true,param1.oldIndex,this._userSelectedIndex));
                                    }
                                 }
                                 §§goto(addr00db);
                              }
                              addr00db:
                              return;
                           }
                           §§goto(addr0095);
                        }
                        §§goto(addr00b7);
                     }
                  }
                  §§goto(addr006d);
               }
               §§goto(addr0064);
            }
            §§goto(addr007b);
         }
         §§goto(addr00c2);
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super.partAdded(param1,param2);
            if(_loc3_ || Boolean(param2))
            {
               §§goto(addr003a);
            }
            §§goto(addr005b);
         }
         addr003a:
         if(param2 == this.amountLabel)
         {
            if(_loc3_ || _loc3_)
            {
               this._labelAdded = true;
               if(_loc3_)
               {
                  addr005b:
                  invalidateProperties();
               }
            }
         }
      }
   }
}

