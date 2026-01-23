package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.filters.GlowFilter;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IHighlightManager;
   import net.bigpoint.field3d.interfaces.IMatrixObject3dVo;
   
   public class HighlightManagerExtended implements IHighlightManager
   {
      
      public static const INMOVE_ALLOW_MOVE_TINT:String = "INMOVE_ALLOW_MOVE_TINT";
      
      public static const INMOVE_DISALLOW_TINT:String = "INMOVE_DISALLOW_TINT";
      
      public static const INMOVE_RANGE_TINT:String = "INMOVE_RANGE_TINT";
      
      public static const COLOR_RESET:String = "COLOR_RESET";
      
      private static const ACTIVE_COLOR:uint = 16777215;
      
      private static const INACTIVE_COLOR:uint = 16777215;
      
      private static const DESTROY_COLOR:uint = 16604766;
      
      private static const MOVE_COLOR:uint = 6152958;
      
      private static const SPECIAL_COLOR:uint = 16766976;
      
      private static const INMOVE_ALLOW_PLACEMENT:uint = 7143168;
      
      private static const INMOVE_DISALLOW_PLACEMENT:uint = 16604766;
      
      private static const INMOVE_IN_RANGE:uint = 6152958;
      
      private static const RESET_TINT:uint = 0;
      
      private static const HIGHLIGHT_MOVE:String = "move";
      
      private static const HIGHLIGHT_DESTROY:String = "destroy";
      
      private var _lastApplicationMode:String;
      
      private var _billboardObjectVo:BillboardObjectVo;
      
      private var _target:SmartObjectContainer;
      
      private var _lastState:String;
      
      private var _selectedFilter:String;
      
      private var _selectedTint:uint;
      
      private var _lastTint:uint;
      
      private var _filterDic:Dictionary;
      
      private var _isVisible:Boolean;
      
      private var _isDirty:Boolean;
      
      public function HighlightManagerExtended()
      {
         super();
         this._filterDic = new Dictionary();
      }
      
      public function prepareHighlightManager(param1:IMatrixObject3dVo, param2:DisplayObject) : void
      {
         this._billboardObjectVo = param1 as BillboardObjectVo;
         this._target = param2 as SmartObjectContainer;
         this.prepareGlowFilter();
         this._selectedTint = RESET_TINT;
         this._lastTint = RESET_TINT;
      }
      
      public function invalidateHighlightManager(param1:String, param2:Boolean = true) : void
      {
         var _loc4_:Sprite = null;
         this.nullCheck("HighlightManager, prepare before invalidate!");
         this.checkForState(param1);
         this.checkVisibility(param2);
         var _loc3_:Boolean = this.checkTint(param2);
         this.checkData();
         if(this._isDirty)
         {
            if(this._isVisible)
            {
               if(this._billboardObjectVo)
               {
                  if(this._billboardObjectVo is ExpansionFieldObjectVo)
                  {
                     if((this._billboardObjectVo as ExpansionFieldObjectVo).configOrigin.sx == 6 && (this._billboardObjectVo as ExpansionFieldObjectVo).configOrigin.sy == 6)
                     {
                        _loc4_ = new ExpansionBox6_6();
                     }
                     else if((this._billboardObjectVo as ExpansionFieldObjectVo).configOrigin.sx == 7 && (this._billboardObjectVo as ExpansionFieldObjectVo).configOrigin.sy == 14)
                     {
                        _loc4_ = new ExpansionBox14_7();
                     }
                     else
                     {
                        _loc4_ = new ExpansionBox7_7();
                     }
                  }
               }
               _loc4_.name = "highlight";
               this._target.addChildAt(_loc4_,0);
               if(_loc3_)
               {
               }
            }
            else
            {
               this.hideGlow();
            }
            this._isDirty = false;
         }
      }
      
      private function prepareGlowFilter() : void
      {
         this._filterDic["active"] = new GlowFilter(ACTIVE_COLOR,1,5,5,100,1);
         this._filterDic["inactive"] = new GlowFilter(INACTIVE_COLOR,1,5,5,100,1);
         this._filterDic["destroy"] = new GlowFilter(DESTROY_COLOR,1,5,5,100,1);
         this._filterDic["move"] = new GlowFilter(MOVE_COLOR,1,5,5,100,1);
         this._filterDic["allow_move"] = new GlowFilter(INMOVE_ALLOW_PLACEMENT,1,5,5,100,1);
         this._filterDic["disallow_move"] = new GlowFilter(INMOVE_DISALLOW_PLACEMENT,1,5,5,100,1);
         this._filterDic["inrange"] = new GlowFilter(INMOVE_IN_RANGE,1,5,5,100,1);
      }
      
      private function checkData() : void
      {
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
               break;
            case ApplicationModeProxy.MODE_DESTROY:
               this._selectedFilter = "destroy";
               this._selectedTint = RESET_TINT;
               this._lastApplicationMode = param1;
               break;
            case ApplicationModeProxy.MODE_MOVE:
               this._selectedFilter = "move";
               this._selectedTint = RESET_TINT;
               this._lastApplicationMode = param1;
               break;
            case INMOVE_ALLOW_MOVE_TINT:
               this._selectedFilter = "allow_move";
               this._selectedTint = INMOVE_ALLOW_PLACEMENT;
               break;
            case INMOVE_DISALLOW_TINT:
               this._selectedFilter = "disallow_move";
               this._selectedTint = INMOVE_DISALLOW_PLACEMENT;
               break;
            case INMOVE_RANGE_TINT:
               this._selectedFilter = "inrange";
               this._selectedTint = INMOVE_IN_RANGE;
               break;
            case COLOR_RESET:
               this._isVisible = false;
         }
      }
      
      private function checkTint(param1:Boolean) : Boolean
      {
         if(this._selectedTint != this._lastTint)
         {
            return true;
         }
         return false;
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
         var _loc1_:DisplayObject = null;
         var _loc2_:String = null;
         if(this._target.getChildByName("highlight") != null)
         {
            _loc1_ = this._target.getChildByName("highlight");
            _loc2_ = _loc1_.name;
            this._target.removeChild(_loc1_);
         }
      }
      
      private function nullCheck(param1:String) : void
      {
         if(this._billboardObjectVo == null || this._target == null)
         {
            throw new RamaCityError(param1);
         }
      }
   }
}

