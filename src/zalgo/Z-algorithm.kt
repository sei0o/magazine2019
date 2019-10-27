package docs

import kotlin.math.max

fun `Z-algorithm`(s: String): IntArray {
    val z = IntArray(s.length) { 0 }
    var L = 0 // ブロックの左端
    for (i in 1 until s.length) {
        val diff = i - L
        if (i + z[diff] < L + z[L]) {
            // Case1. 結果を再利用できる
            z[i] = z[diff]
        } else {
            // Case2と3のとき 計算も必要
            // skipできる距離はCase3のとき0だと考える。
            var k = max(0, z[L] - diff)
            while (i + k < s.length && s[k] == s[i + k]) k++
            z[i] = k
            L = i // Lの更新
        }
    }
    z[0] = s.length // z[0] = |S| は自明
    return z
}