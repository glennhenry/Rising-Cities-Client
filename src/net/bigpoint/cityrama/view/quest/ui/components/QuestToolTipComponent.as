package net.bigpoint.cityrama.view.quest.ui.components
{
   import net.bigpoint.cityrama.model.detailViews.vo.QuestDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestTaskVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class QuestToolTipComponent extends SkinnableComponent
   {
      
      private static var _skinParts:Object = {
         "checkmark":true,
         "headerText":true,
         "taskText":false,
         "gfxIcon":false
      };
      
      public var headerText:LocaLabel;
      
      public var checkmark:BriskImageDynaLib;
      
      public var taskText:LocaLabel;
      
      public var gfxIcon:BriskImageDynaLib;
      
      private var _data:QuestDetailViewVo;
      
      private var _dataIsDirty:Boolean;
      
      public function QuestToolTipComponent()
      {
         super();
      }
      
      public function set data(param1:QuestDetailViewVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._dataIsDirty = true;
            if(this._data.isQuestComplete)
            {
               this.styleName = "complete";
            }
            else
            {
               this.styleName = "";
            }
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:QuestTaskVo = null;
         var _loc2_:QuestTaskVo = null;
         var _loc3_:int = 0;
         super.commitProperties();
         if(this._dataIsDirty && Boolean(this._data))
         {
            this._dataIsDirty = false;
            if(this.headerText)
            {
               this.headerText.text = this._data.questHeader;
            }
            for each(_loc2_ in this._data.tasks)
            {
               if(_loc2_.isActive)
               {
                  _loc1_ = _loc2_;
                  break;
               }
            }
            if(!_loc1_ && Boolean(this._data.tasks.length))
            {
               _loc3_ = int(this._data.tasks.length - 1);
               while(_loc3_ >= 0)
               {
                  if(QuestTaskVo(this._data.tasks[_loc3_]).isCompleted)
                  {
                     _loc1_ = this._data.tasks[_loc3_];
                     break;
                  }
                  _loc3_--;
               }
            }
            if(_loc1_)
            {
               if(this.taskText)
               {
                  if(_loc1_.isCompleted)
                  {
                     this.taskText.text = _loc1_.finishedTaskText;
                  }
                  else
                  {
                     this.taskText.text = _loc1_.taskText;
                  }
               }
               if(this.gfxIcon)
               {
                  this.gfxIcon.briskDynaVo = _loc1_.getTaskIconVo(true);
               }
               if(this.checkmark)
               {
                  if(_loc1_.isCompleted)
                  {
                     this.checkmark.briskDynaVo = new BriskDynaVo("gui_popups_paperPopup","checkmark_green");
                  }
                  else
                  {
                     this.checkmark.briskDynaVo = new BriskDynaVo("gui_popups_paperPopup","checkmark_gray");
                  }
               }
            }
            else if(this.taskText)
            {
               this.taskText.text = "";
            }
         }
      }
      
      override protected function measure() : void
      {
         super.measure();
         if(measuredHeight % 2 != 0)
         {
            ++measuredHeight;
         }
      }
   }
}

