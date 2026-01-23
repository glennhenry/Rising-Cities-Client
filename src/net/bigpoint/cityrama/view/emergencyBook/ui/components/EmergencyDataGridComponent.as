package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import mx.collections.ArrayCollection;
   import mx.collections.IList;
   import mx.collections.ISort;
   import mx.collections.ISortField;
   import mx.collections.Sort;
   import mx.collections.SortField;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.ToggleButton;
   import spark.events.IndexChangeEvent;
   import spark.layouts.HorizontalLayout;
   
   public class EmergencyDataGridComponent extends List
   {
      
      public static const ITEM_SELECTED:String = "itemSelected";
      
      public static const SELECT_ITEM_EVENT:Event = new Event("selectItem",true);
      
      private static var _skinParts:Object = {
         "nameSortButton":true,
         "listRightButton":true,
         "pagingList":true,
         "dataGroup":false,
         "operationCountSortButton":true,
         "badgeSortButton":true,
         "dropIndicator":false,
         "pagingLabel":false,
         "listLeftButton":true,
         "scroller":false
      };
      
      private var _iteration:uint = 0;
      
      private var _iterationLength:uint = 4;
      
      private var _dataProvider:IList;
      
      private var _sort:ISort;
      
      public var badgeSortButton:ToggleButton;
      
      public var nameSortButton:ToggleButton;
      
      public var operationCountSortButton:ToggleButton;
      
      public var pagingList:List;
      
      public var pagingLabel:LocaLabel;
      
      public var listLeftButton:DynamicImageButton;
      
      public var listRightButton:DynamicImageButton;
      
      public function EmergencyDataGridComponent()
      {
         super();
         this.addEventListener(IndexChangeEvent.CHANGE,this.handleIndexChange);
         this.doubleClickEnabled = true;
         this.addEventListener(MouseEvent.DOUBLE_CLICK,this.doubleClickHandler);
      }
      
      private function handleIndexChange(param1:IndexChangeEvent) : void
      {
         if(selectedIndex != -1)
         {
            dispatchEvent(new Event(ITEM_SELECTED,true));
         }
      }
      
      override public function set dataProvider(param1:IList) : void
      {
         this._dataProvider = param1;
         if(this._dataProvider == null)
         {
            return;
         }
         this.updatePagingList();
         super.dataProvider = this.currentIteration;
         this.checkScrollButtons();
      }
      
      public function set preselectedIndex(param1:int) : void
      {
         if(param1 >= 0)
         {
            selectedIndex = param1;
            this.handleIndexChange(null);
         }
      }
      
      private function get currentIteration() : IList
      {
         var _loc1_:uint = 0;
         var _loc2_:ArrayCollection = null;
         var _loc3_:int = 0;
         var _loc4_:Point = null;
         if(this._iterationLength > 0 && this._dataProvider && Boolean(this._dataProvider.length))
         {
            _loc1_ = Math.ceil(this._dataProvider.length / this._iterationLength);
            this._iteration = Math.min(this._iteration,_loc1_);
            _loc2_ = new ArrayCollection();
            _loc3_ = int(this._iteration * this._iterationLength);
            while(_loc3_ < this._dataProvider.length && _loc3_ < (this._iteration + 1) * this._iterationLength)
            {
               _loc2_.addItem(this._dataProvider.getItemAt(_loc3_));
               _loc3_++;
            }
            this.pagingList.selectedIndex = this._iteration;
            if(this.pagingLabel)
            {
               this.pagingLabel.text = Number(this._iteration + 1).toString() + "/" + _loc1_.toString();
            }
            _loc4_ = HorizontalLayout(this.pagingList.layout).getScrollPositionDeltaToElement(Math.min(this.pagingList.dataProvider.length,this._iteration + 6));
            if(_loc4_)
            {
               HorizontalLayout(this.pagingList.layout).horizontalScrollPosition = _loc4_.x;
            }
            _loc2_.sort = this._sort;
            _loc2_.refresh();
            return _loc2_;
         }
         return null;
      }
      
      private function updatePagingList() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:IList = null;
         var _loc3_:int = 0;
         if(this._dataProvider != null)
         {
            _loc1_ = Math.ceil(this._dataProvider.length / this._iterationLength);
            _loc2_ = new ArrayCollection();
            _loc3_ = 1;
            while(_loc3_ <= _loc1_)
            {
               _loc2_.addItem(_loc3_);
               _loc3_++;
            }
            this.pagingList.dataProvider = _loc2_;
         }
      }
      
      public function get iterationLength() : uint
      {
         return this._iterationLength;
      }
      
      private function checkScrollButtons() : void
      {
         var _loc1_:uint = Math.ceil(this._dataProvider.length / this._iterationLength);
         this.listLeftButton.enabled = this._iteration > 0;
         this.listRightButton.enabled = this._iteration < _loc1_ - 1;
      }
      
      public function set iterationLength(param1:uint) : void
      {
         this._iterationLength = param1;
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.badgeSortButton)
         {
            this.badgeSortButton.addEventListener(MouseEvent.CLICK,this.handleBadgeSortClick);
         }
         else if(param2 == this.nameSortButton)
         {
            this.nameSortButton.addEventListener(MouseEvent.CLICK,this.handleNameSortClick);
         }
         else if(param2 == this.operationCountSortButton)
         {
            this.operationCountSortButton.addEventListener(MouseEvent.CLICK,this.handleOperationCountSortClick);
         }
         else if(param2 == this.pagingList)
         {
            this.pagingList.addEventListener("rendererClick",this.handleRendererClick);
         }
         else if(param2 == this.listLeftButton)
         {
            this.listLeftButton.addEventListener(MouseEvent.CLICK,this.handleIterateLeft);
         }
         else if(param2 == this.listRightButton)
         {
            this.listRightButton.addEventListener(MouseEvent.CLICK,this.handleIterateRight);
         }
      }
      
      private function handleBadgeSortClick(param1:MouseEvent) : void
      {
         this.sortField(this.badgeSortButton.selected,this.nameSortButton.selected,this.operationCountSortButton.selected,1);
         this._iteration = 0;
         this.dataProvider = this._dataProvider;
      }
      
      private function handleNameSortClick(param1:MouseEvent) : void
      {
         this.sortField(this.badgeSortButton.selected,this.nameSortButton.selected,this.operationCountSortButton.selected,2);
         this._iteration = 0;
         this.dataProvider = this._dataProvider;
      }
      
      private function handleOperationCountSortClick(param1:MouseEvent) : void
      {
         this.sortField(this.badgeSortButton.selected,this.nameSortButton.selected,this.operationCountSortButton.selected,3);
         this._iteration = 0;
         this.dataProvider = this._dataProvider;
      }
      
      private function handleRendererClick(param1:Event) : void
      {
      }
      
      private function sortField(param1:Boolean, param2:Boolean, param3:Boolean, param4:uint = 4) : void
      {
         if(!(this._dataProvider is ArrayCollection))
         {
            return;
         }
         this._sort = new Sort();
         var _loc5_:ISortField = new SortField("specialisationGfxId",true,!param1,false);
         var _loc6_:ISortField = new SortField("name",true,!param2,false);
         var _loc7_:ISortField = new SortField("operationsLeft",true,!param3,true);
         switch(param4)
         {
            case 1:
               this._sort.fields = [_loc5_];
               break;
            case 2:
               this._sort.fields = [_loc6_];
               break;
            case 3:
               this._sort.fields = [_loc7_];
               break;
            default:
               this._sort.fields = [_loc5_,_loc6_,_loc7_];
         }
         ArrayCollection(this._dataProvider).sort = this._sort;
         ArrayCollection(this._dataProvider).refresh();
      }
      
      private function handleIterateLeft(param1:MouseEvent) : void
      {
         --this._iteration;
         this.updatePagingList();
         super.dataProvider = this.currentIteration;
         this.checkScrollButtons();
      }
      
      private function handleIterateRight(param1:MouseEvent) : void
      {
         ++this._iteration;
         this.updatePagingList();
         super.dataProvider = this.currentIteration;
         this.checkScrollButtons();
      }
      
      private function doubleClickHandler(param1:MouseEvent) : void
      {
         if(!(param1.target is Group) && !(param1.target is DynamicImageButton))
         {
            this.handleIndexChange(null);
            dispatchEvent(SELECT_ITEM_EVENT);
         }
      }
   }
}

