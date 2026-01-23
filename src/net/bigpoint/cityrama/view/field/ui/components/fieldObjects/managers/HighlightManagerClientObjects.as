package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.filters.GlowFilter;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.vo.ClientFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IHighlightManager;
   import net.bigpoint.field3d.interfaces.IMatrixObject3dVo;
   
   public class HighlightManagerClientObjects implements IHighlightManager
   {
      
      private static const RESET_TINT:uint = 0;
      
      private var _dataVo:ClientFieldObjectVo;
      
      private var _target:DisplayObject;
      
      private var _isDirty:Boolean;
      
      private var _lastState:String;
      
      private var _selectedFilter:String;
      
      private var _selectedTint:uint;
      
      private var _filterDic:Dictionary;
      
      private const ACTIVE_COLOR:uint = 16777215;
      
      private var _isVisible:Boolean;
      
      private var _lastApplicationMode:String;
      
      private var _lastTint:uint;
      
      public function HighlightManagerClientObjects()
      {
         super();
      }
      
      public function prepareHighlightManager(param1:IMatrixObject3dVo, param2:DisplayObject) : void
      {
         this._dataVo = param1 as ClientFieldObjectVo;
         this._target = param2;
         this._filterDic = new Dictionary();
         this._filterDic["active"] = new GlowFilter(this.ACTIVE_COLOR,1,6,6,100,1);
         this._selectedTint = RESET_TINT;
         this._lastTint = RESET_TINT;
      }
      
      public function invalidateHighlightManager(param1:String, param2:Boolean = true) : void
      {
         this.nullCheck("HighlightManager, prepare before invalidate!");
         this.checkForState(param1);
         this.checkVisibility(param2);
         var _loc3_:Boolean = this.checkTint(param2);
         if(this._isDirty)
         {
            if(this._isVisible)
            {
               this.setGlow(this._filterDic[this._selectedFilter]);
               if(_loc3_)
               {
                  this.setTint(this._selectedTint);
               }
            }
            else
            {
               this.hideGlow();
               this.setTint(0);
            }
            this._isDirty = false;
         }
      }
      
      private function setGlow(param1:GlowFilter) : void
      {
         this._target.filters = [param1];
      }
      
      private function setTint(param1:uint) : void
      {
         this._lastTint = param1;
         if(param1 == RESET_TINT)
         {
            TweenMax.to(this._target,0,{"colorTransform":{
               "tint":param1,
               "tintAmount":0
            }});
         }
         else
         {
            TweenMax.to(this._target,0,{"colorTransform":{
               "tint":param1,
               "tintAmount":0.5
            }});
         }
      }
      
      private function hideGlow() : void
      {
         this._target.filters = [];
      }
      
      private function checkTint(param1:Boolean) : Boolean
      {
         return this._selectedTint != this._lastTint;
      }
      
      private function checkForState(param1:String) : void
      {
         if(this._lastState == param1)
         {
            return;
         }
         this._isDirty = true;
         this._lastState = param1;
         switch(param1)
         {
            case ApplicationModeProxy.MODE_NORMAL:
               this._selectedFilter = "active";
               this._selectedTint = RESET_TINT;
               this._lastApplicationMode = param1;
         }
      }
      
      private function nullCheck(param1:String) : void
      {
         if(this._dataVo == null || this._target == null)
         {
            throw new RamaCityError(param1);
         }
      }
      
      private function checkVisibility(param1:Boolean) : void
      {
         if(this._isVisible == param1)
         {
            return;
         }
         this._isDirty = true;
         this._isVisible = param1;
      }
   }
}

