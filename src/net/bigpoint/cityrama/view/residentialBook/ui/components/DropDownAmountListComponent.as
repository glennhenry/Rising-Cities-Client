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
      
      private static var _skinParts:Object = {
         "dropDown":false,
         "dataGroup":false,
         "amountLabel":true,
         "dropIndicator":false,
         "labelDisplay":false,
         "scroller":false,
         "openButton":true
      };
      
      public var amountLabel:LocaLabel;
      
      private var _userSelectedIndex:int;
      
      private var _labelAdded:Boolean;
      
      public function DropDownAmountListComponent()
      {
         this.addEventListener(IndexChangeEvent.CHANGE,this.handleIndexChange);
         super();
      }
      
      override protected function commitProperties() : void
      {
         if(Boolean(dataProvider) && this._labelAdded)
         {
            if(selectedIndex == -1)
            {
               selectedIndex = this._userSelectedIndex;
               this.handleIndexChange(null);
            }
         }
         super.commitProperties();
      }
      
      private function handleIndexChange(param1:IndexChangeEvent) : void
      {
         var _loc2_:DropDownList = this;
         var _loc3_:DropDownAmountListItemVo = _loc2_.dataProvider.getItemAt(_loc2_.selectedIndex) as DropDownAmountListItemVo;
         if(Boolean(this.amountLabel) && Boolean(_loc3_))
         {
            this.amountLabel.text = LocaUtils.getThousendSeperatedNumber(_loc3_.categoryAmount);
         }
         this._userSelectedIndex = selectedIndex;
         if(param1)
         {
            dispatchEvent(new IndexChangeEvent(DROPDOWN_INDEX_CHANGED,true,true,param1.oldIndex,this._userSelectedIndex));
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.amountLabel)
         {
            this._labelAdded = true;
            invalidateProperties();
         }
      }
   }
}

