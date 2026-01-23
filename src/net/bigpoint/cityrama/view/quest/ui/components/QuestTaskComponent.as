package net.bigpoint.cityrama.view.quest.ui.components
{
   import net.bigpoint.cityrama.model.detailViews.vo.QuestTaskVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class QuestTaskComponent extends SkinnableComponent
   {
      
      private static var _skinParts:Object = {
         "headerText":true,
         "gfxIcon":true
      };
      
      private var _data:QuestTaskVo;
      
      private var _dataIsDirty:Boolean;
      
      public var gfxIcon:BriskImageDynaLib;
      
      public var headerText:LocaLabel;
      
      public function QuestTaskComponent()
      {
         super();
      }
      
      public function set data(param1:QuestTaskVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._dataIsDirty = true;
            invalidateProperties();
            this._data = param1;
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            if(this.gfxIcon)
            {
               this.gfxIcon.dynaBmpSourceName = "task" + this._data.gfxId.toString();
            }
            if(this.headerText)
            {
               this.headerText.text = this._data.taskText;
            }
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(this._data)
         {
            if(param2 == this.gfxIcon)
            {
               this.gfxIcon.dynaBmpSourceName = "task" + this._data.gfxId.toString();
            }
            else if(param2 == this.headerText)
            {
               this.headerText.text = this._data.taskText;
            }
         }
      }
   }
}

